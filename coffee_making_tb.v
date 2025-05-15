module coffee_making_tb;
reg rst;
reg clk;
reg start;
reg mwis;
reg mwos;
reg ewis;
reg ewos;
reg cwis;
reg cwos;
wire p,m,w,c,s,st,f;
coffee_making uut(.rst(rst),.clk(clk),.start(start),.mwis(mwis),.mwos(mwos),.ewis(ewis),.ewos(ewos),.cwis(cwis),.cwos(cwos),.p(p),.m(m),.w(w),.c(c),.s(s),.st(st),.f(f));
initial begin
repeat (50)
    begin
        clk=0;#5;
        clk=1;#5;
    end
end
initial begin
rst=1;#10;
rst=0;#10;
start=1;#10;
mwis=1;
mwos=0;
ewis=0;
ewos=0;
cwis=0;
cwos=0;
start=1;#10;
mwis=0;
mwos=1;
ewis=0;
ewos=0;
cwis=0;
cwos=0;
start=1;#10;
mwis=0;
mwos=0;
ewis=1;
ewos=0;
cwis=0;
cwos=0;
start=1;#10;
mwis=0;
mwos=0;
ewis=0;
ewos=1;
cwis=0;
cwos=0;
start=1;#10;
mwis=0;
mwos=0;
ewis=0;
ewos=0;
cwis=1;
cwos=0;
start=1;#10;
mwis=0;
mwos=0;
ewis=0;
ewos=0;
cwis=0;
cwos=1;
end
endmodule