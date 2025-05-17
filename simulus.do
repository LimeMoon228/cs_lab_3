vlog Volodenkov_test.v
vlog Testbench_test_Volodenkov.v
vsim -c tb_Control_Dev_Volodenkov
add wave *
run 300ns
quit -f