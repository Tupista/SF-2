#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*例* $quad$ 讨论级数 $display(sum_(n=1)^infinity (-1)^(n-1)/(1+n x))$ 在

- $[a,+infinity)$ 上的一致收敛性 $(a>0)$,
- $(0,+infinity)$ 上的一致收敛性. 

*证明* 

+ #linebreak() 

 $S_n (x)=display(sum_(k=1)^n (-1)^(k-1)/(1+k x)),$ 由 $display(1/(1+k x))$ 关于 $k$ 单调减知原级数收敛. 记和函数为 $S(x).$

 当 $x>=a, abs(S_n (x)-S(x))=display(abs(sum_(k=n+1)^infinity (-1)^(k-1)/(1+k x))<=1/(1+(n+1)x)<=1/(1+(n+1)a)).$

 $forall epsilon>0,$ 由 $display(1/(1+(n+1)a)<epsilon) ==>$ 取 $N=display(ceil((epsilon^(-1)-1)/a)),$ 当 $n>N$ 时有 $ abs(S_n (x)-S(x))<epsilon, quad forall x>=a. $

 故原级数在 $[a,+infinity)$ 上一致收敛. 

+ #linebreak()

 若原级数在 $(0,+infinity)$ 上一致收敛, 则它在 $(0,1]$ 上同样一致收敛. 

 由于 $display((-1)^(n-1)/(1+n x))$ 在 $[0,1]$ 上连续, $forall n>=1,$ 由柯西准则知该级数在 $[0,1]$ 上一致收敛. 

 *注* $quad$ 这一结论可以在 $ abs(sum_(k=n+1)^(n+p) u_k (x))<epsilon, forall x in (a,b) $ 中令 $x->a$ 并将不等式改为 $<=epsilon$ 得到. 

 此时级数在 $x=0$ 处发散, 矛盾. 于是级数在 $(0,+infinity)$ 上不一致收敛. 

 *另法* $quad$ 若原级数在 $(0,+infinity)$ 上一致收敛, 则通项 $ (-1)^(n-1)/(1+n x) arrows 0, quad forall x in (0,+infinity). $ 由于在 $x=n^(-1)$ 时 $u_n (x)=display((-1)^(n-1)/(1+1)) arrow.not 0,$ 故原级数不一致收敛.  #h(1fr) $square.stroked$

=== 一致收敛的判别法

*定理* $quad$ 设 $f(x),{f_n (x)}$ 在 $I subset RR$ 上有定义, 则 $f_n (x) arrows f(x) thick (x in I)$ 的充分必要条件是 $ lim_(n->infinity) sup_(x in I) thick abs(f_n (x)-f(x))=0. $

*证明* 

*必要性* $quad$ 由 $f_n (x) arrows f(x) thick (x in I),$ $ forall epsilon>0, exists N, forall n>N, forall x in I, abs(f_n (x)-f (x))<epsilon/2. $ 于是 $display(sup_(x in I) thick abs(f_n (x)-f(x))<=epsilon/2 ==> lim_(n->infinity) sup_(x in I) thick abs(f_n (x)-f(x))<=epsilon/2<epsilon).$ 令 $epsilon->0$ 即证. 

*充分性* $quad$ 反之亦然. #h(1fr) $square.stroked$

*例* $quad f_n (x)=display(x/(1+n^2 x^2)), thick x in (-infinity,+infinity).$

*解* $quad forall x in RR, f_n (x)->0 thick (n->infinity).$

当 $x!=0$ 时 $1+n^2 x^2>=2 n abs(x)$ $ abs(f_n (x)-f(x))=abs(f_n (x))= abs(x/(1+n^2 x^2))<=1/(2n), $ 上式对 $x=0$ 也成立. 于是 $ sup_(x in RR) thick abs(f_n (x)-f(x))<=1/(2n)-->0, $ 由此可知 $f_n (x) arrows 0 thick (x in RR).$ #h(1fr) $square.stroked$

上述定理对于函数项级数有类似的表述, 将不等式改写即可:  $ lim_(n->infinity) sup_(x in I) thick  abs(sum_(k=n+1)^infinity u_k (x))<epsilon. $ 

*定理 (Weierstrass M 判别法)* $quad$ 设 $sum u_n (x)$ 在 $I$ 上有定义. 若有正数序列 ${M_n}$ 使得 $ abs(u_n (x))<=M_n, forall x in I, $ 且 $sum M_n$ 收敛, 则 $sum abs(u_n (x))$ 在 $I$ 上一致收敛（即 $sum u_n (x)$ 在 $I$ 上绝对一致收敛）. 

*定义* $quad$ 若 $sum abs(u_n (x))$ 在 $I$ 上一致收敛, 称 $sum u_n (x)$ 在 $I$ 上*绝对一致收敛*. 

*注* $quad$ 绝对一致收敛一般来说强于一致收敛和绝对收敛. 

*证明* $quad$ $forall epsilon>0,$ 由 $sum M_n$ 收敛 $exists N, forall n>N, forall p>=1,$ $ sum_(k=n+1)^(n+p) M_k < epsilon. $ 从而 $ sum_(k=n+1)^(n+p) abs(u_k (x))<=sum_(k=n+1)^(n+p) M_k<epsilon, quad forall x in I. $ #h(1fr) $square.stroked$

*例* $quad display(sum_(n=1)^infinity x^k e^(-n x) thick (k>1))$ 在 $[0,+infinity)$ 上的一致收敛性. 

*解* $quad u_n (x)=x^k e^(-n x).$ 来求 $u_n (x)$ 的最大值: $ u'_n (x)=k x^(k-1)e^(-n x)-n x^k e^(-n x), $ 于是 $u_n (x)$ 在 $display(x=k/n)$ 处取最大值 $M_n=display(k^k/n^k e^(-k)).$ 

在 $k>1$ 时 $sum M_n$ 收敛, 因而原级数一致收敛. #h(1fr) $square.stroked$

#pagebreak()

*注* $quad$ 对于上一例中 $k=1$ 的情形,  $ S_n (x)-S(x)=sum_(m=n+1)^infinity x e^(-m x)=(x e^(-(n+1) x))/(1-e^(-x)). \ sup_(x>=0) thick abs(S_n (x)-S(x))>= (1/(n+1) e^(-1))/(1-e^(-1/(n+1)))-->e^(-1), quad (x=1/(n+1)) $ 因而原级数不一致收敛. 

对 $(k,x) in D subset (1,+infinity) times [0,+infinity)$ 上的一致收敛性, $ forall epsilon>0, exists N, forall n>N, forall (k,x) in D, abs(S_n (k,x)-S (k,x))<epsilon, $ 则称 $sum u_n (k,x)$ 在 $D$ 上一致收敛. 

Weierstrass M 判别法仅适用于判断绝对一致收敛函数. 对于条件一致收敛函数, Dirichlet 判别法和 Abel 判别法同样有类似的表述. 

*定理 (Dirichlet)* $quad$ 设 $display(sum_(n=1)^infinity u_n (x) v_n (x)), thick x in I$ 满足

- $S_n (x)=display(sum_(k=1)^n u_k (x))$ 在 $I$ 上一致有界, 

- $forall x in I, {v_n (x)}$ 单调且 $v_n (x) arrows 0, thick x in I,$

则 $sum u_n (x) v_n (x)$ 在 $I$ 上一致收敛. 

*证明* $quad forall epsilon>0,$ 由 $v_n (x) arrows 0, exists N, forall n>N,$ $abs(v_n (x))<display(epsilon/(6M)).$ 

此时 $forall n>N, forall p>=1,$ $ abs(sum_(k=n+1)^(n+p) u_k (x) v_k (x))&=abs(sum_(k=n+1)^(n+p) (S_k (x)-S_(k-1) (x))v_k (x)) \ &= abs(sum_(k=n+1)^(n+p) S_k (x) v_k (x)-sum_(k=n+1)^(n+p) S_(k-1) (x) v_k (x)) \ &=abs(S_(n+p) (x) v_(n+p) (x)+sum_(k=n+1)^(n+p-1) S_k (v_(k+1) (x)-v_k (x))-S_n (x) v_(n+1) (x)) \ &<= abs(S_(n+p) (x) v_(n+p) (x)) + abs(sum_(k=n+1)^(n+p-1) S_k (v_(k+1) (x)-v_k (x))) + abs(S_n (x) v_(n+1) (x)) \ &<= M dot epsilon/(6M) + M sum_(k=n+1)^(n+p-1) abs(v_(k+1) (x)-v_k (x))+M dot epsilon/(6M) \ &=epsilon/3+M dot abs(sum_(k=n+1)^(n+p-1) (v_(k+1) (x)-v_k (x))) \ &=epsilon/3+ M dot (abs(v_(n+1) (x))+abs(v_(n+p) (x)))<epsilon. $ #h(1fr) $square.stroked$

#pagebreak()

*定理 (Abel)* $quad$ 设 $sum u_n (x) v_n (x), x in I$ 满足

- $sum u_n (x)$ 在 $I$ 上一致收敛,  

- $forall x in I, {v_n (x)}$ 单调且 ${v_n (x)}$ 在 $I$ 上一致有界, 
则 $sum u_n (x) v_n (x)$ 在 $I$ 上一致收敛.  

*注* $quad$ 此时不能采用如下方法证明: $ v_n->v, quad sum u_n v_n=sum u_n (v_n-v)+v sum u_n. $ 其中 $v_n-v->0,$ 但是不能保证 $v_n-v arrows 0.$ 典型的反例是 $x^n thick (x in (0,1)).$