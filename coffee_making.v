module coffe_making(
input clk,rst,start,
input mwis,mwos,ewis,ewos,cwis,cwos,
output reg p,m,w,c,s,st,f
    );
always @(posedge clk)
    begin
             if (rst==1)
            
        begin
         $display ("press start=1");
        p<=0;
        m<=0;
        w<=0;
        c<=0;
        s<=0;
        st<=0;
        f<=0;
        end
        else
        begin
            if (start==0)
             begin
        p<=0;
        m<=0;
        w<=0;
        c<=0;
        s<=0;
        st<=0;
        f<=0;
        end
            else
             begin
                if (mwis==1)
                    begin
                    $display ("press mwis");
                    $display ("put cup in stand");
                    p<=1;
                    m<=1;
                    w<=0;
                    c<=0;
                    s<=1;
                    st<=1;
                    f<=1;
                    $display ("take your cup");
                    $display ("have good day");
                     end
                            else if (mwos==1)
                            begin
                            $display ("press mwos");
                            $display ("put cup in stand");
                            p<=1;
                            m<=1;
                            w<=0;
                            c<=0;
                            s<=0;
                            st<=0;
                            f<=1;
                            $display ("take your cup");
                            $display ("have good day");
                         end
                            else if (ewis==1)
                                begin
                                $display ("press ewis");
                                $display ("put cup in stand");
                                 p<=1;
                                m<=0;
                                w<=1;
                                c<=1;
                                s<=1;
                                st<=1;
                                f<=1;
                                $display ("take your cup");
                                $display ("have a nice day");
                                end 
                                    else if (ewos==1)
                                        begin
                                        $display ("press ewos");
                                        $display ("put cup in stand");
                                           p<=1;
                                            m<=0;
                                            w<=1;
                                            c<=1;
                                            s<=0;
                                            st<=1;
                                            f<=1;
                                            $display ("take your cup");
                                            $display ("have a nice day"); 
                                        end
                                            else if (cwis==1)
                                            begin
                                            $display ("press cwis");
                                            $display ("put cup in stand");
                                            p<=1;
                                            m<=1;
                                            w<=0;
                                            c<=1;
                                            s<=1;
                                            st<=1;
                                            f<=1;
                                            $display ("take your cup");
                                            $display ("your day starts with a coffee");
                                             end
                                                else if(cwos==1)
                                                begin
                                                $display ("press cwos");
                                                 $display ("put cup in stand");
                                                p<=1;
                                                m<=1;
                                                w<=0;
                                                c<=1;
                                                s<=0;
                                                st<=1;
                                                f<=1;
                                                $display ("take your cup");
                                                 $display ("your day starts with a coffee");
                                                $display ("have a nice day");
                                                $stop;
                                                end
end
end
end
 endmodule