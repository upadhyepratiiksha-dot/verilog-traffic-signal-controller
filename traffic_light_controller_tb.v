module test_traffic_light_controller;

reg clk;
wire [0:2] light;

traffic_light_controller dut(clk, light);

always
    #5 clk = ~clk;

initial begin
    clk = 1'b0;
    #100 $finish;
end

initial begin
    $dumpfile("traffic_light.vcd");
    $dumpvars(0, test_traffic_light_controller);

    $monitor("Time = %0t, RGY = %b", $time, light);
end

endmodule
