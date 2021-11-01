module tictactoe1;

    class c1;

        //3x3 grid
        rand int A[9];

        //define enum type for game results
        typedef enum bit [1:0] {X_Win, O_Win, Draw} result_type_t;

        rand result_type_t result_type;


        //X:1 O:-1 empty:0
        constraint c1 {
            foreach(A[i])
                A[i] inside {[-1:1]};
        }


        //X first hand
        constraint c2 {
            A.sum inside{[0:1]};
        }


        //game result distribution
        constraint c3 {
            result_type dist {X_Win:=4, O_Win:=4, Draw := 2};
        }


        //game result senarios
        constraint c4 {
            (result_type == X_Win) -> ((A[0]+A[1]+A[2]==3)|| (A[3]+A[4]+A[5]==3) || (A[6]+A[7]+A[8]==3) //row
            || (A[0]+A[3]+A[6]==3)||(A[1]+A[4]+A[7]==3)||(A[2]+A[5]+A[8]==3) //column
            ||(A[0]+A[4]+A[8]==3) || (A[2]+A[4]+A[6]==3)) && //diagonal
            ((A[0]+A[1]+A[2]!=-3) && (A[3]+A[4]+A[5]!=-3)&&(A[6]+A[7]+A[8]!=-3) //row
            && (A[0]+A[3]+A[6]!=-3)&&(A[1]+A[4]+A[7]!=-3)&&(A[2]+A[5]+A[8]!=-3) //column
            &&(A[0]+A[4]+A[8]!=-3) && (A[2]+A[4]+A[6]!=-3)); //diagonal


            (result_type == O_Win) -> ((A[0]+A[1]+A[2]==-3)|| (A[3]+A[4]+A[5]==-3) || (A[6]+A[7]+A[8]==-3) //row
            || (A[0]+A[3]+A[6]==-3)||(A[1]+A[4]+A[7]==-3)||(A[2]+A[5]+A[8]==-3) //column
            ||(A[0]+A[4]+A[8]==-3) || (A[2]+A[4]+A[6]==-3)) && //diagonal
            ((A[0]+A[1]+A[2]!=3) &&(A[3]+A[4]+A[5]!=3)&&(A[6]+A[7]+A[8]!=3) //row
            && (A[0]+A[3]+A[6]!=3)&&(A[1]+A[4]+A[7]!=3)&&(A[2]+A[5]+A[8]!=3) //column
            &&(A[0]+A[4]+A[8]!=3) && (A[2]+A[4]+A[6]!=3)); //diagonal

            (result_type == Draw) -> (A[0]+A[1]+A[2]!=-3) && (A[3]+A[4]+A[5]!=-3)&&(A[6]+A[7]+A[8]!=-3) //row
            && (A[0]+A[3]+A[6]!=-3)&&(A[1]+A[4]+A[7]!=-3)&&(A[2]+A[5]+A[8]!=-3) //column
            &&(A[0]+A[4]+A[8]!=-3) && (A[2]+A[4]+A[6]!=-3) &&
            (A[0]+A[1]+A[2]!=3) && (A[3]+A[4]+A[5]!=3)&&(A[6]+A[7]+A[8]!=3) //row
            && (A[0]+A[3]+A[6]!=3)&&(A[1]+A[4]+A[7]!=3)&&(A[2]+A[5]+A[8]!=3) //column
            &&(A[0]+A[4]+A[8]!=3) &&(A[2]+A[4]+A[6]!=3) //diagonal
            &&(A[0]!=0&&A[1]!=0&&A[2]!=0&&A[3]!=0&&A[4]!=0&&A[5]!=0&&A[6]!=0&&A[7]!=0&&A[8]!=0); //all spaces are filled

        }


    endclass


    c1 c1_h;

    initial begin

        c1_h = new();

        repeat(10) begin
            if(c1_h.randomize()) begin

                $display("=============================");
                $display("This is %s", c1_h.result_type.name());
                $display("%d, %d, %d", c1_h.A[0], c1_h.A[1], c1_h.A[2]);
                $display("%d, %d, %d", c1_h.A[3], c1_h.A[4], c1_h.A[5]);
                $display("%d, %d, %d", c1_h.A[6], c1_h.A[7], c1_h.A[8]);
                $display("=============================");

            end


        end

    end


endmodule
