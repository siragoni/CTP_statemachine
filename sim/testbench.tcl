proc prj_compile {} {
    set src_path "../hdl"
    catch {project close} msg

    project new "." ddg

    # Before you can compile your source files, you must create a library in which to store the compilation results.
    # CREATE A LIB CALLED WORK
    vlib work

    # VHDL uses logical library names that can be mapped to ModelSim library directories. If libraries are not mapped properly, and you invoke your simulation, necessary components will not be loaded and simulation will fail.
    vmap work work


    foreach f [glob ../hdl/*.vhd] {
        project addfile $f
    }

    project addfile ../../COMMON/sim/pack_avalon_sim.vhd

    project addfile ../../COMMON/hdl/pack_cru_core.vhd
    project addfile ../../TTC/ctpemu/hdl/ctpemu.vhd
    project addfile ../../TTC/ctpemu/hdl/ctpemucore.vhd

    foreach f [glob ../../COMMON/hdl/*.vhd] {
        project addfile $f
    }

    # COMPILE THE TB
    project addfile "tb.vhd"

    project calculateorder

}

proc prj_simulate {} {
    vsim -t ps -voptargs="+acc" work.tb
    config wave -signalnamewidth 1
    do wave.do
    log -r /*

    run 1500 us
}


proc prj_reload {} {
    q -sim
    project close
    prj_compile
}

proc prj_reload_sim {} {
    prj_reload
    prj_simulate
}

##########

proc tb_rst {value} {
    force -freeze sim:/tb/s_reset $value 0
}

proc tb_gbt_data_gen_start {value} {
    force -freeze sim:/tb/cmp_data_gen/start_i $value 0
}
