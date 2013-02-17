clear
clc
N = 25;
Probs = .8; 
A = buildneighborhood(N,Probs);
B = sum(A);
C = max(B);
diffxy(A,1)
endthis = 0
while endthis ~= 42
    for j = C:-1:1
        check = 0;
        for k = 1:numel(B)
            if B(k) > j-1
                check = check + 1;
            end
        end
        if check > j+1
            tryfirst = j
            break
        end
    end
    for j = tryfirst:-1:1
        counter = 1;
        D=0;
        clear E
        j
        for k = 1:numel(B)
            if B(k) < j
                D(counter) = k;
                counter = counter + 1;
            end
        end
        if ((D ~= 0) & (numel(D) > 1))
            if numel(D) == numel(A(:,1))
                A = [A(1:D(numel(D)),:)];
                A = [A(:,1:D(numel(D)))];
            else                
                A = [A(1:D(numel(D))-1,:);A(D(numel(D))+1:numel(A(:,1)),:)];
                A = [A(:,1:D(numel(D))-1) A(:,D(numel(D))+1:numel(A(1,:)))];
            end
            for k = numel(D)-1:-1:1
                A = [A(1:D(k)-1,:);A(D(k)+1:numel(A(:,1)),:)];
                A = [A(:,1:D(numel(D)-1)) A(:,D(numel(D)):numel(A(1,:)))];
            end
            A
            pause(1)
        end
    end
end
                
               
       
        
% % % % % % % % % % % % % % % %%%% New Thing %%%
% % % % % % % % % % % % % % %     F = sum(E);
% % % % % % % % % % % % % % %     check2 = 0;
% % % % % % % % % % % % % % %     for k = 1:numel(F)
% % % % % % % % % % % % % % %         if F(k) > j-1
% % % % % % % % % % % % % % %             check2 = check2 + 1;
% % % % % % % % % % % % % % %         end
% % % % % % % % % % % % % % %     end
% % % % % % % % % % % % % % %     if check2 > j+1
% % % % % % % % % % % % % % %         check2
% % % % % % % % % % % % % % %         break
% % % % % % % % % % % % % % %     end
% % % % % % % % % % % % % % % 
% % % % % % % % % % % % % % %     
% % % % % % % % % % % % % % %     F = sum(E)
% % % % % % % % % % % % % % %     G = max(F)
% % % % % % % % % % % % % % %     for k = G:-1:1
% % % % % % % % % % % % % % %         check1 = 0;
% % % % % % % % % % % % % % %         H = 0;
% % % % % % % % % % % % % % %         tryfirst2 = 0;
% % % % % % % % % % % % % % %          clear I
% % % % % % % % % % % % % % % %         for i = 1:numel(F)
% % % % % % % % % % % % % % % %             if F(i) > k-1
% % % % % % % % % % % % % % % %                 check1 = check1 + 1;
% % % % % % % % % % % % % % % %             end
% % % % % % % % % % % % % % % %         end
% % % % % % % % % % % % % % % %         if check1 > k+1
% % % % % % % % % % % % % % % %             tryfirst2 = k;
% % % % % % % % % % % % % % % %             break
% % % % % % % % % % % % % % % %         end
% % % % % % % % % % % % % % %         for i = tryfirst:-1:1
% % % % % % % % % % % % % % %             counter2 = 1;
% % % % % % % % % % % % % % %             for m = 1:numel(F)
% % % % % % % % % % % % % % %                 if F(m) > i-1
% % % % % % % % % % % % % % %                     H(counter2) = m
% % % % % % % % % % % % % % %                     counter2 = counter2+1;
% % % % % % % % % % % % % % %                 end
% % % % % % % % % % % % % % %             end
% % % % % % % % % % % % % % %             for m = 1:numel(H)
% % % % % % % % % % % % % % %                 I(:,m) = E(H(m),:)
% % % % % % % % % % % % % % %             end
% % % % % % % % % % % % % % %             I
% % % % % % % % % % % % % % %         end
% % % % % % % % % % % % % % %     end
% % % % % % % % % % % % % % %     break
% % % % % % % % % % % % % % %     G = max(F);
% % % % % % % % % % % % % % %     for i = G:-1:1
% % % % % % % % % % % % % % %         check = 0;
% % % % % % % % % % % % % % %         for k = 1:numel(F)
% % % % % % % % % % % % % % %             if F(k) > i-1
% % % % % % % % % % % % % % %                 check = check + 1;
% % % % % % % % % % % % % % %             end
% % % % % % % % % % % % % % %         end
% % % % % % % % % % % % % % %         if check > i+1
% % % % % % % % % % % % % % %             tryfirst2 = i;
% % % % % % % % % % % % % % %             break
% % % % % % % % % % % % % % %         end
% % % % % % % % % % % % % % %     end
% % % % % % % % % % % % % % %     for i = tryfirst2:-1:1
% % % % % % % % % % % % % % %         clear I;
% % % % % % % % % % % % % % %         H = 0;
% % % % % % % % % % % % % % %         counter = 1;
% % % % % % % % % % % % % % %         for k = 1:numel(F)
% % % % % % % % % % % % % % %             if F(k) > i-1
% % % % % % % % % % % % % % %                 H(counter) = k;
% % % % % % % % % % % % % % %                 counter = counter + 1;
% % % % % % % % % % % % % % %             end
% % % % % % % % % % % % % % %         end    
% % % % % % % % % % % % % % %         for k = 1:numel(H)
% % % % % % % % % % % % % % %             I(:,k) = E(:,H(k));
% % % % % % % % % % % % % % %         end
% % % % % % % % % % % % % % %     end
% % % % % % % % % % % % % % % %    if sum(sum(I)) == (numel(I(1,:))^2-numel(I(1,:)))
% % % % % % % % % % % % % % %     if numel(I(:,1)) == numel(I(1,:))
% % % % % % % % % % % % % % %         I
% % % % % % % % % % % % % % %         break
% % % % % % % % % % % % % % %     end
% % % % % % % % % % % % % % % %    sum(E)
% % % % % % % % % % % % % % % %    sum(sum(E)) n(n-1) 