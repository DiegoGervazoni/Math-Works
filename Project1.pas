program Project1;

uses crt;
     //Variaveis usadas nos cases
var op: integer;
    opf : integer;
    opfa: integer;
    opm : integer;
    //Variaveis usadas nos calculos de funcoes
    x : real;
    y : real;
    k1 : real;
    auxx : real;
    fat_k : real;
    e : real;
    a : integer;
    fx : real;
    b : integer;
    c : integer;
    x1 : real;
    x2 : real;
    z : real;
    //Variaveis usadas nos calculos de matrizes
    mA: integer;
    nA: integer;
    mB : integer;
    nB : integer;
    mC : integer;
    nC : integer;
    matrizA : array[1..100,1..100] of integer;
    matrizB : array[1..100,1..100] of integer;
    matrizC : array[1..100,1..100] of real; //a matrizC será exibida como resultado dos calculos sempre com numeros inteiros, o tipo somente está real para o calculo da multiplicacao por escalar
    i : integer;
    j : integer;
    k : real;
    l : integer;
    aux : integer;
    aux1 : char;
    det : integer;



begin
  repeat
  clrscr;
  writeLn('Calculadora de funcoes e matrizes');
  writeLn('Escolha uma opcao abaixo:');
  writeLn('1 - Calcular funcoes!');
  writeLn('2 - Calcular matrizes!');
  writeLn('0 - Sair!');
  ReadLn(op);
  case op of
       1 : Begin
         repeat
         clrscr;
            writeln('Escolha a funcao desejada');
	    writeln('1 - Funcao Constante');
	    writeln('2 - Funcao Potencia');
	    writeln('3 - Funcao Exponencial');
	    writeln('4 - Funcao exp(x)');
	    writeln('5 - Funcao Linear');
	    writeln('6 - Funcao Quadratica');
	    writeln('7 - Funcao Seno');
	    writeln('8 - Funcao Cosseno');
	    writeln('9 - Funcao Tangente');
	    writeln('10 - Funcao Logaritmo Natural');
	    writeln('11 - Funcao Raiz Quadrada');
	    writeln('12 - Funcao Racional Particular');
	    writeln('0 - Voltar');
	    readln(opf);
            Case opf of
                 1 : begin
                     repeat
                        clrscr();
                        write('Digite o valor de k para a constucao da funcao desejada: ');
                        readln(k);
                        writeLn('Escolha uma opcao:');
                        writeln('1 - Aplicar um valor a funcao!');
                        writeln('2 - Informacoes sobre esta funcao!');
                        writeln('0 - Voltar!');
                        readln(opfa);
                        case opfa of
		             1: begin
                                     repeat
                                     clrscr();
                                     writeLn('Funcao constante!');
			             write('Digite o valor de x: ');
                                     readln(x);
                                     writeln('f(',x:0:2,') = ',k:0:2);
                                     writeln();
                                     write('Deseja calcular novamente?(S/N): ');
                                     readLn(aux1);
                                     if(aux1 = 's') then
                                     aux:=0
                                     else
                                     aux:=1;

                                     until (aux = 1);
                             end;
                             2: begin
                                clrscr();
			        writeln('O grafico da funcao constante e bidimensional e sempre sera uma reta horizontal em relacaoo ao eixo x. Isso acontece porque a imagem e constante.');
			        writeln('Na funcao constante, independentemente de qual seja o valor do dominio, ela sempre tera a mesma imagem.');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)=',k:0:1);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;

                     until (aux = 1) or (opfa = 0);
                     end;
                 2: begin
                     repeat
                        clrscr();
                        write('Digite o valor de k para a constucao da funcao desejada: ');
                        readln(k1);
                        writeLn('Escolha uma opcao:');
                        writeln('1 - Aplicar um valor a funcao!');
                        writeln('2 - Informacoes sobre esta funcao!');
                        writeln('0 - Voltar!');
                        readln(opfa);
                        case opfa of
		             1: begin
                                     repeat
                                     clrscr();
                                     writeln(k1:0:1);
                                     writeLn('Funcao Potencia!');
			             write('Digite o valor de x: ');
                                     readln(x);
                                     auxx := x;

                                     if (k1=0) then
					 begin
					      x:=1;
					 end
				      else if (k1=1) then
					 begin
					      x:=x;
					 end
				      else
				            begin

                                            x:= exp(k1*ln(auxx));
				            end;
			              writeln('f(',auxx:0:1,') = ',x:0:1);
                                     write('Deseja calcular novamente?(S/N): ');
                                     readLn(aux1);
                                     if(aux1 = 's') then
                                     aux:=0
                                     else
                                     aux:=1;

                                   until (aux = 1);
                             end;
                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= x^',k1:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;
                 3 : begin
                     repeat
                        clrscr();
                        write('Digite o valor de k para a constucao da funcao desejada: ');
                        readln(k1);
                        begin
                        if (k1 <= 1) then
                           begin
                           repeat
                           writeLn('O valor de K deve ser diferente que 1, e pertencente aos numeros inteiros positivos');
                           write('Digite um novo valor para K: ');
                           readln(k1);
                           until (k1 > 1);
                           end
                        else

                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);


                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao Exponencial!');
			               write('Digite o valor de x: ');
                                       readln(x);
                                       auxx := k1;
                                       if (x=0) then
					   begin
					        k1:=1;
					   end
				        else if (x=1) then
					   begin
					        k1:=x;
					   end
				        else

				              begin
                                              k1:= exp(x*ln(k1));
				              end;
			                writeln('f(',auxx:0:2,') = ',k1:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;

                                     until (aux = 1);
                               end;
                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;

                        end;

                     until (aux = 1) or (opfa = 0);
                     end;
                 4 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao Exp(x)!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao Exp(x)!');
			               write('Digite o valor de x: ');
                                       readln(x);
                                       y:= exp(x);
			                writeln('f(',x:0:2,') = ',y:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;

                                     until (aux = 1);
                               end;
                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;
                 5 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao Linear!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao Linear!');
                                       write('Digite o valor do coeficiente "a" para a construcao da funcao desejada: ');
                                       readln(a);
                                       write('Digite o valor do coeficiente "b" para a construcao da funcao desejada: ');
                                       readln(b);
                                       if (a = 0) then
                                          begin
				          repeat
					  write('Digite um numero diferente de zero para a: ');
					  readln(a);
                                          until (a <> 0);
                                          end;

                                          write('Digite o valor de x: ');
                          	          readln(x1);
				          fx:= ((a*x1)+b);
				          writeln('f(',x1:0:2,') = ',fx:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;

                                     until (aux = 1);
                               end;

                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x1:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;
                 6 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao Quadratica!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao Quadratica!');
                                       write('Digite o valor do coeficiente "a" para a construcao da funcao desejada: ');
                                       readln(a);
                                       write('Digite o valor do coeficiente "b" para a construcao da funcao desejada: ');
                                       readln(b);
                                       write('Digite o valor do coeficiente "c" para a construcao da funcao desejada: ');
                                       readln(c);
                                       if a =0 then
                                          begin
				          repeat
					  write('Digite um numero diferente de zero para a: ');
					  readln(a);
				          until a<>0;
                                          end;
                                          write('Digite o valor de x: ');
                          	          readln(x1);
				          x2:= x1*x1;
				          fx:= ((a*x2)+(b*x1)+c);
				          writeln('f(',x1:0:2,') = ',fx:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;

                                     until (aux = 1);
                               end;

                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x1:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;
                 7 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao seno!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao seno!');
                                       write('Digite o valor de x em graus: ');
                                       readln(x1);
                                       z := (pi*x1)/180;
                                       fx:=  sin(z);
				       writeln('f(',x1:0:2,') = ',fx:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;

                                     until (aux = 1);
                               end;

                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                        until (aux = 1) or (opfa = 0);
                        end;
                 8 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao cosseno!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao cosseno!');
                                       write('Digite o valor de x em graus: ');
                                       readln(x1);
                                       z := (pi*x1)/180;
                                       fx:= cos(z);
				       writeln('f(',x1:0:2,') = ',fx:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;

                                     until (aux = 1);
                               end;

                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;
                  9 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao Tangente!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                   repeat

                                   clrscr();
                                   writeln('Funcao Tangente!');
                                   write('Digite o valor de x em graus: ');
                                   readln(x1);

                                   if (x1 = 90) or (x1 = 270) then

                                      begin
                                      repeat
                                       write('Digite um numero diferente de 90 ou 270: ');
                                       readln(x1);
                                      until (x1 <> 90) and (x1 <> 270);
                                      end

                                   else


                                   z:= (pi*x1)/180;
                                   fx:= sin(z)/cos(z);
                                   writeln('f(' ,x1:0:2,') = ', fx:0:2);


                                   write('Deseja calcular novamente?(S/N): ');
                                   readLn(aux1);
                                   if(aux1 = 's') then
                                   aux:=0
                                   else
                                   aux:=1;
                                   until (aux = 1);

                               end;


                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;

                  10 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao Logaritmo Natural!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao Logaritmo Natural!');
                                       write('Digite o valor de x em graus: ');
                                       readln(x1);
                                       if (x1 <=0) then
                                         begin
                                             repeat
					           write('Digite um valor maior que zero: ');
                                                   readln(x1);
			                     until x>0;
                                         end
                                       else
                                           fx:= (ln(x1));
				           writeln('f(',x1:0:2,') = ',fx:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;
                                     until (aux = 1);
                               end;
                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;
                  11 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao Raiz Quadrada!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao Raiz Quadrada!');
                                       write('Digite o valor de x em graus: ');
                                       readln(x1);
                                       if (x1 <=0) then
                                         begin
                                             repeat
					           write('Digite um valor maior que zero: ');
                                                   readln(x1);
			                     until x>0;
                                         end
                                       else
                                           fx:= (sqrt(x1));
				           writeln('f(',x1:0:2,') = ',fx:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;
                                     until (aux = 1);
                               end;
                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x:0:2);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;
                  12 : begin
                     repeat
                        clrscr();
                          writeLn('Funcao Racional Particular!');
                          writeLn('Escolha uma opcao:');
                          writeln('1 - Aplicar um valor a funcao!');
                          writeln('2 - Informacoes sobre esta funcao!');
                          writeln('0 - Voltar!');
                          readln(opfa);
                          case opfa of
		               1: begin
                                       repeat
                                       clrscr();
                                       writeLn('Funcao Racional Particular!');
                                       write('Digite o valor de x em graus: ');
                                       readln(x1);
                                       if (x1 <=0) then
                                         begin
                                             repeat
					           write('Digite um valor maior que zero: ');
                                                   readln(x1);
			                     until x>0;
                                         end
                                       else
                                           fx:= (1/(x1));
				           writeln('f(',x1:0:2,') = ',fx:0:2);
                                       write('Deseja calcular novamente?(S/N): ');
                                       readLn(aux1);
                                       if(aux1 = 's') then
                                       aux:=0
                                       else
                                       aux:=1;
                                     until (aux = 1);
                               end;
                             2: begin
                                clrscr();
			        writeln('');
			        writeln('');
			        writeln('Dominio = x');
			        writeln('Imagem = f(x)= k^',x);
			        writeln('Zero(s) da funcao =  x');
			        writeln('Maximo da funcao = x');
			        writeln('Minimo da funcao = x');
                                write('Digite qualquer tecla para sair');
                                readkey();
      		                end;
                             0 : write();
                        else writeln('Operacao invalida');
                        readkey;
		        end;
                     until (aux = 1) or (opfa = 0);
                     end;
                  0 : write();
             else writeln('Operacao invalida');
             readkey;
             end;
         until (opf = 0);
            end;
       //Calculo de matrizes
       2 : begin
           repeat
            clrscr;
            writeLn('Calculadora de matrizes');
            writeLn('Escolha uma opcao abaixo:');
            writeLn('1 - Soma de matrizes!');
            writeLn('2 - Subtracao de matrizes!');
            writeLn('3 - Multiplicacao por escalar!');
            writeLn('4 - Produto entre matrizes!');
            writeLn('5 - Determinante!');
            writeLn('0 - Voltar!');
            ReadLn(opm);
            Case opm of
                 1 : begin
                     repeat
                       clrscr;
                       writeLn('Soma de matrizes');
                       writeLn('Matriz A m X n');
                       repeat
                         write('Digite o numero de linhas m: ');
                         readLn(mA);
                         if(mA < 0) then write('Digite um numero inteiro maior que zero!');
                       until (mA > 0);
                       repeat
                         write('Digite o numero de colunas n: ');
                         readLn(nA);
                         if(nA < 0) then write('Digite um numero inteiro maior que zero!');
                       until (nA > 0);
                       writeLn('Matriz B m X n!');
                       repeat
                         write('Digite o numero de linhas m: ');
                         readLn(mB);
                         if(mB < 0) then write('Digite um numero inteiro maior que zero!');
                         until (mB > 0);
                       repeat
                         write('Digite o numero de colunas n: ');
                         readLn(nB);
                         if(nB < 0) then write('Digite um numero inteiro maior que zero!');
                       until (nB > 0);
                       if (mA = mB) and (nA = nB) then
                          begin
                               mC:=mB;
                               nC:=nB;
                               WriteLn('Digite os valores de cada posicao referente a matriz A!');
                               for i:=1 to mA do
                                  for j:=1 to nA do
                                     begin
                                     write('A ',i,'-',j,': ');
                                     readLn(matrizA[i,j]);
                                     end;
                               writeln();
                               writeLn('Representacao matriz A!');
                               for i:=1 to mA do
                                  begin
                                       writeLn('');
                                       for j:=1 to nA do
                                          if (j=1) then
                                             write(' | ',matrizA[i,j],' | ')
                                          else
                                            write(matrizA[i,j],' | ');
                                  end;
                               writeLn();
                               writeln();
                               WriteLn('Digite os valores de cada posicao referente a matriz B!');
                               for i:=1 to mB do
                                  for j:=1 to nB do
                                     begin
                                     write('B ',i,'-',j,': ');
                                     readLn(matrizB[i,j]);
                                     end;
                               writeln();
                               writeLn('Representacao matriz B!');
                               for i:=1 to mB do
                                  begin
                                       writeLn('');
                                       for j:=1 to nB do
                                          if (j=1) then
                                             write(' | ',matrizB[i,j],' | ')
                                          else
                                            write(matrizB[i,j],' | ');
                                  end;
                               writeLn();
                               writeln();
                               for i:=1 to mC do
                                  for j:=1 to nC do
                                     begin
                                     matrizC[i,j]:=matrizA[i,j]+matrizB[i,j];
                                     end;
                               writeLn('Representacao matriz C!');
                               for i:=1 to mC do
                                  begin
                                       writeLn('');
                                       for j:=1 to nC do
                                          if (j=1) then
                                             write(' | ',matrizC[i,j]:0:0,' | ')
                                          else
                                            write(matrizC[i,j]:0:0,' | ');
                                  end;
                               writeLn();
                               writeln();
                          end
                       else
                           begin
                           writeLn('Soma impossivel, so e possivel somar duas matrizes de mesma ordem. Ex: A3x3 + B3x3');
                           readkey;
                           end;
                       write('Deseja calcular novamente?(S/N): ');
                       readLn(aux1);
                       if(aux1 = 's') then
                          aux:=0
                       else
                         aux:=1;
                     until (aux = 1);
                 end;
                 2 : begin
                     repeat
                       clrscr;
                       writeLn('Subtracao de matrizes');
                       writeLn('Matriz A m X n');
                       repeat
                         write('Digite o numero de linhas m: ');
                         readLn(mA);
                         if(mA < 0) then write('Digite um numero inteiro maior que zero!');
                       until (mA > 0);
                       repeat
                         write('Digite o numero de colunas n: ');
                         readLn(nA);
                         if(nA < 0) then write('Digite um numero inteiro maior que zero!');
                       until (nA > 0);
                       writeLn('Matriz B m X n!');
                       repeat
                         write('Digite o numero de linhas m: ');
                         readLn(mB);
                         if(mB < 0) then write('Digite um numero inteiro maior que zero!');
                         until (mB > 0);
                       repeat
                         write('Digite o numero de colunas n: ');
                         readLn(nB);
                         if(nB < 0) then write('Digite um numero inteiro maior que zero!');
                       until (nB > 0);
                       if (mA = mB) and (nA = nB) then
                          begin
                               mC:=mB;
                               nC:=nB;
                               WriteLn('Digite os valores de cada posicao referente a matriz A!');
                               for i:=1 to mA do
                                  for j:=1 to nA do
                                     begin
                                     write('A ',i,'-',j,': ');
                                     readLn(matrizA[i,j]);
                                     end;
                               writeln();
                               writeLn('Representacao matriz A!');
                               for i:=1 to mA do
                                  begin
                                       writeLn('');
                                       for j:=1 to nA do
                                          if (j=1) then
                                             write(' | ',matrizA[i,j],' | ')
                                          else
                                            write(matrizA[i,j],' | ');
                                  end;
                               writeln();
                               writeln();
                               WriteLn('Digite os valores de cada posicao referente a matriz B!');
                               for i:=1 to mB do
                                  for j:=1 to nB do
                                     begin
                                     write('B ',i,'-',j,': ');
                                     readLn(matrizB[i,j]);
                                     end;
                               writeln();
                               writeLn('Representacao matriz B!');
                               for i:=1 to mB do
                                  begin
                                       writeLn('');
                                       for j:=1 to nB do
                                          if (j=1) then
                                             write(' | ',matrizB[i,j],' | ')
                                          else
                                            write(matrizB[i,j],' | ');
                                  end;
                               writeln();
                               writeln();
                               for i:=1 to mC do
                                  for j:=1 to nC do
                                     begin
                                     matrizC[i,j]:=matrizA[i,j]-matrizB[i,j];
                                     end;
                               writeLn('Representacao matriz C!');
                               for i:=1 to mC do
                                  begin
                                       writeLn('');
                                       for j:=1 to nC do
                                          if (j=1) then
                                             write(' | ',matrizC[i,j]:0:0,' | ')
                                          else
                                            write(matrizC[i,j]:0:0,' | ');
                                  end;
                               writeLn();
                               writeln();
                          end
                       else
                           begin
                           writeLn('Subtracao impossivel, so e possivel subtrair duas matrizes de mesma ordem. Ex: A3x3 - B3x3');
                           readkey;
                           end;
                       write('Deseja calcular novamente?(S/N): ');
                       readLn(aux1);
                       if(aux1 = 's') then
                          aux:=0
                       else
                         aux:=1;
                     until (aux = 1);
                 end;
                 3 : begin
                     repeat
                       clrscr;
                       writeLn('Multiplicacao de matriz por excalar');
                       writeLn('Matriz A m X n');
                       repeat
                         write('Digite o numero de linhas m: ');
                         readLn(mA);
                         if(mA <= 0) then write('Digite um numero inteiro maior que zero!');
                       until (mA > 0);
                       repeat
                         write('Digite o numero de colunas n: ');
                         readLn(nA);
                         if(nA <= 0) then write('Digite um numero inteiro maior que zero!');
                       until (nA > 0);
                           mC:=mA;
                           nC:=nA;
                           WriteLn('Digite os valores de cada posicao referente a matriz A!');
                           for i:=1 to mA do
                              for j:=1 to nA do
                                 begin
                                 write('A ',i,'-',j,': ');
                                 readLn(matrizA[i,j]);
                                 end;
                           writeln();
                           writeLn('Representacao matriz A!');
                               for i:=1 to mA do
                                  begin
                                       writeLn('');
                                       for j:=1 to nA do
                                          if (j=1) then
                                             write(' | ',matrizA[i,j],' | ')
                                          else
                                            write(matrizA[i,j],' | ');
                                  end;
                           writeln();
                           writeln();
                           Write('Digite o valor de K: ');
                           readLn(k);
                           for i:=1 to mC do
                              for j:=1 to nC do
                                 begin
                                 matrizC[i,j]:= k * matrizA[i,j];
                                 writeLn('C ',i,'-',j,': ',matrizC[i,j]:0:2);
                                 end;
                           writeln();
                          writeLn('Representacao matriz Resultante (',k,'xA)!');
                             for i:=1 to mC do
                                begin
                                     writeLn('');
                                     for j:=1 to nC do
                                        if (j=1) then
                                           write(' | ',matrizC[i,j],' | ')
                                        else
                                          write(matrizC[i,j],' | ');
                                end;
                             writeLn();
                             writeln();
                       write('Deseja calcular novamente?(S/N): ');
                       readLn(aux1);
                       if(aux1 = 's') then
                          aux:=0
                       else
                         aux:=1;
                     until (aux = 1);
                 end;
                 4 : begin
                     repeat
                       clrscr;
                       writeLn('Produto das matrizes');
                       writeLn('Matriz A m X n');
                       repeat
                         write('Digite o numero de linhas m: ');
                         readLn(mA);
                         if(mA < 0) then write('Digite um numero inteiro maior que zero!');
                       until (mA > 0);
                       repeat
                         write('Digite o numero de colunas n: ');
                         readLn(nA);
                         if(nA < 0) then write('Digite um numero inteiro maior que zero!');
                       until (nA > 0);
                       writeLn('Matriz B m X n!');
                       repeat
                         write('Digite o numero de linhas m: ');
                         readLn(mB);
                         if(mB < 0) then write('Digite um numero inteiro maior que zero!');
                         until (mB > 0);
                       repeat
                         write('Digite o numero de colunas n: ');
                         readLn(nB);
                         if(nB < 0) then write('Digite um numero inteiro maior que zero!');
                       until (nB > 0);
                       if (nA = mB)  then
                          begin
                               mC:=mA;
                               nC:=nB;
                               WriteLn('Digite os valores de cada posicao referente a matriz A!');
                               for i:=1 to mA do
                                  for j:=1 to nA do
                                     begin
                                     write('A ',i,'-',j,': ');
                                     readLn(matrizA[i,j]);
                                     end;
                               writeln();
                               writeLn('Representacao matriz A!');
                               for i:=1 to mA do
                                  begin
                                       writeLn('');
                                       for j:=1 to nA do
                                          if (j=1) then
                                             write(' | ',matrizA[i,j],' | ')
                                          else
                                            write(matrizA[i,j],' | ');
                                  end;
                               writeln();
                               writeln();
                               WriteLn('Digite os valores de cada posicao referente a matriz B!');
                               for i:=1 to mB do
                                  for j:=1 to nB do
                                     begin
                                     write('B ',i,'-',j,': ');
                                     readLn(matrizB[i,j]);
                                     end;
                               for i:=1 to mA do
                                  for j:=1 to nB do
                                     begin
                                     matrizC[i,j]:= 0;
                                     for l:=1 to nA do
                                       begin
                                       matrizC[i,j]:=(matrizA[i,l]*matrizB[l,j])+matrizC[i,j];

                                       end;
                                     end;
                               writeln();
                               writeln();
                               writeLn('Resultado da Multiplicacao');
                               writeLn('Representacao matriz C!');
                               for i:=1 to mC do
                                  begin
                                       writeLn('');
                                       for j:=1 to nC do
                                          if (j=1) then
                                             write(' | ',matrizC[i,j]:0:0,' | ')
                                          else
                                            write(matrizC[i,j]:0:0,' | ');
                                  end;
                               writeln();
                          end
                       else
                           begin
                          writeLn('Ordem invalida, o numero de colunas da Matriz A deve ser igual ao numero de linhas da Matriz B!');
                          aux:=0;
                          end;
                       write('Deseja calcular novamente?(S/N): ');
                       readLn(aux1);
                       if(aux1 = 's') then
                          aux:=0
                       else
                         aux:=1;
                     until (aux = 1);
                 end;
                   5 : begin
                     repeat
                       clrscr;
                       writeLn('Determinante MAXIMO MATRIZ ORDEM 3X3!');
                       writeLn('Matriz A n X n');
                       repeat
                         writeLn('Para calcular o determinante, o numero de colunas deve ser igual ao de linhas ');
                         write('Digite o numero de linhas e colunas n: ');
                         readLn(nA);
                         if(nA <= 0) then write('Digite um numero inteiro maior que zero!');
                       until (nA > 0);
                           nC:=nA;
                           WriteLn('Digite os valores de cada posicao referente a matriz A!');
                           for i:=1 to nA do
                              for j:=1 to nA do
                                 begin
                                 write('A ',i,'-',j,': ');
                                 readLn(matrizA[i,j]);
                                 end;
                           writeln();
                           writeLn('Representacao matriz A!');
                               for i:=1 to mA do
                                  begin
                                       writeLn('');
                                       for j:=1 to nA do
                                          if (j=1) then
                                             write(' | ',matrizA[i,j],' | ')
                                          else
                                            write(matrizA[i,j],' | ');
                                  end;
                               writeln();
                               writeln();
                       if (nA = 1) then
                          begin
                           matrizC[1,1]:= matrizA[1,1];
                           writeLn('Determinante de A: ',matrizC[1,1]);
                          end
                       else if (nA = 2) then
                          begin
                              det:=(matrizA[1,1] * matrizA[2,2]) - (matrizA[1,2] * matrizA[2,1]);
                          end
                       else if (nA = 3) then
                          begin
                              det := (((matrizA[1,1]*matrizA[2,2]*matrizA[3,3])+(matrizA[1,2]*matrizA[2,3]*matrizA[3,1])
                              +(matrizA[1,3]*matrizA[2,1]*matrizA[3,2]))-((matrizA[3,1]*matrizA[2,2]*matrizA[1,3])
                              +(matrizA[3,2]*matrizA[2,3]*matrizA[1,1])+(matrizA[3,3]*matrizA[2,1]*matrizA[1,2])));
                          end;
                       writeLn('Determinante de A = ', det);
                       write('Deseja calcular novamente?(S/N): ');
                       readLn(aux1);
                       if(aux1 = 's') then
                          aux:=0
                       else
                         aux:=1;
                     until (aux = 1);
                 end;
            0: write();
            else writeln('Operacao invalida');
            readkey;
            end;
            until (opm = 0);
       end;
       0: write();
       else writeln('Operacao invalida');
       readkey;
   end;
  until (op = 0);
end.

