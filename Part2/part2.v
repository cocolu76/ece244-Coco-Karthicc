`timescale 1ns / 1ns // `timescale time_unit/time_precision


//module part2(LEDR[5], SW[0]);
  //  wire Connection; //Declare the wire called Connection
    //something more

    //block1 B1 (
      //  .in1(SW[0]), // assign port SW[0] to port in1
        //.out1(Connection) // assign wire Connection to port out1
    //);
    //block2 B2 (
      //  .in2(Connection), // assign wire Connection to port in2
        //.out2(LEDR[5]) // assign port LEDR[5] to port out2
    //);
//endmodule

module v7404 (pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
    input pin1, pin3, pin5, pin13, pin11, pin9;
    output pin2, pin4, pin6, pin12, pin10, pin8;
    assign pin2 = ~pin1;
    assign pin4 = ~pin3;
    assign pin6 = ~pin5;
    assign pin12= ~pin13;
    assign pin10 = ~pin11;
    assign pin8 = ~pin9;
endmodule

module v7408 (pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
    input pin1, pin2, pin4, pin5, pin13, pin12, pin10, pin9;
    output pin3, pin6, pin11, pin8;
    assign pin3 = pin1 & pin2;
    assign pin6 = pin4 & pin5;
    assign pin11 = pin12 & pin13;
    assign pin8 = pin9 & pin10;
endmodule    

module v7432 (pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
    input pin1, pin2, pin4, pin5, pin13, pin12, pin10, pin9;
    output pin3, pin6, pin11, pin8;
    assign pin3 = pin1 | pin2;
    assign pin6 = pin4 | pin5;
    assign pin11 = pin12 | pin13;
    assign pin8 = pin9 | pin10;
endmodule 

module mux2to1(x, y, s, m);
    input x; //select 0
    input y; //select 1
    input s; //select signal
    output m; //output
    
    //declare all wires, refer to schematic
    wire sn1, n2a2, xa1, a3o1, ya4, sa5, a6o2, mo3;


    //instantiate not, and, and or chips
    v7404 NOT (n1, n3, n5, n9,  n11, n13, n2, n4, n6,n8,n10,n12);
    v7408 AND (a1, a3, a5, a9, a11, a13, a2, a4, a6, a8, a10, a12);
    v7432 OR (o1, o3, o5, o9, o11, o13, o2, o4, o6, o8, o10, o12);

    //connect wires

	assign sn1 = s;
	assign n1 = sn1;
	assign n2a2 = n2;
	assign a2 = n2a2;
	assign xa1 = x;
	assign a1 = xa1;
	assign a3o1 = a3;
	assign o1 = a3o1;
	assign ya4 = y;
	assign a4 = ya4;
	assign sa5 = s;
	assign a5 = sa5;
	assign a6o2 = a6;
	assign o2 = a6o2;
	assign mo3 = o3;
	assign m = mo3;
	
        
endmodule