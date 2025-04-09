#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*例* 
- $f_n (x)=x^n, x in [0,1].$
 - 当 $0<=x<1, f_n (x)=x^n->0,$
 - 当 $x=1,f_n (1)=1^n=1.$
 于是 $display(lim_(n->infinity) f(x)=cases(0 "," quad & 0<=x<1",", 1 "," & x=1"."))$

- 记 ${r_n}_(n>=1)$ 为 $[0,1]$ 上的全体有理数. 定义 $f_n (x)=display(cases(1 "," quad & x=r_1","dots","r_n",",0 "," & "otherwise."))thick$ \ 此时 $forall x in QQ inter [0,1], f(x)->0.$ 于是 $f_n (x) -> D(x).$ \ 则 $f_n (x) in R[0,1], display(lim_(n->infinity) f_n (x) in.not R[0,1]).$

- $f_n (x)=n x (1-x^2)^n, x in [0,1].$ $forall x in [0,1], f_n (x)->0.$ $ integral_0^1 f_n (x)dif x&=integral_0^1 n x (1-x^2)^n dif x=n/2 integral_0^1 (1-x^2)^n dif x^2 \ &= lr(n/(2(n+1))(1-x^2)^(n+1)|)_1^0=n/(2(n+1))->1/2, \ integral_0^1 f(x)dif x&=integral_0^1 0 dif x=0, \ lim_(n->infinity) integral_0^1 f_n (x)dif x &!= integral_0^1 lim_(n->infinity) f_n (x)dif x. $ #h(1fr)

== $section 2$ 一致收敛的概念
#h(1fr)

*定义* $quad$ 设 $f_n (x) thick (n>=1),f(x)$ 在 $x in I$ 上有定义. 若 $forall epsilon>0, exists N, forall n>N, forall x in I,$ $ abs(f_n (x)-f(x))<epsilon, $ 则称函数项序列 ${f_n (x)}$ 在 $I$ 上*一致收敛*到 $f(x),$ 记为 $ f_n (x) arrows.rr f(x), thick x in I thick (n->infinity). $

不一致收敛的正面刻画: $exists epsilon_0>0, forall N, exists n>N, exists x in I, abs(f_n (x)-f(x))>=epsilon_0.$

*例*

- $f_n (x)=x^n, x in [0,1].$

 $forall q in (0,1), f_n (x) arrows.rr 0, x in [0,q],quad because forall x in [0,q], x^n<=q^n->0.$

 取 $epsilon_0=1/2, x_n=(1/2)^(1/n),$ 则 $abs(f_n (x_n)-f(x_n))=abs(1/2-0)=1/2=epsilon.$ 

 $==> f_n (x)$ 在 $[0,1]$ 上不一致收敛. 

*性质*

- 设 $f_n (x) arrows.rr f(x), x in I.$ 则 $forall J subset I, f_n (x) arrows.rr f(x), x in J.$

- 设 $f_n (x) arrows.rr f(x)$ 对 $x in I_1, x in I_2$ 均成立, 则对 $x in I_1 union I_2$ 也成立. 

- 设 $f_n (x) arrows.rr f(x), g_n (x) arrows.rr g(x), x in I.$ 则 $forall alpha,beta in RR,$ $ alpha f_n (x)+beta g_n (x) arrows.rr alpha f(x)+beta g(x), thick x in I. $

*问题*: 是否有 $f_n (x) g_n (x) arrows.rr f(x)g(x), x in I$?

*例* $quad f_n (x)=(1-x)x^n, x in [0,1].$ 有 $f_n (x)->0, forall x in [0,1].$

来证 $f_n (x) arrows.rr 0, x in [0,1]:$

- 当 $x in (1-epsilon,1], (1-x)x^n<1-x<epsilon,$

- 对 $x in [0,1-epsilon],$ 来找 $N "s.t." forall n>N, (1-x)x^n < epsilon.$ $ (1-x)x^n<= x^n thick <=(1-epsilon)^n, $ 只要 $(1-epsilon)^n<epsilon, N=display(ceil((ln epsilon)/ln(1-epsilon))),$ 从而当 $n>N$ 时, $forall x in [0,1],(1-x)x^n<epsilon.$

显然的事实是一列相同的函数一致收敛到自身. 

令 $g_n (x)=display(1/(1-x)),$ 则 $f_n (x)g_n (x)=x^n$ 不一致收敛. 这就说明上述问题的答案是否定的. 

*定义* $quad$ 设 ${f_n (x)}$ 为 $I$ 上的函数序列. 若 $exists M>0 "s.t." forall x in I, forall n>=1,$ $ abs(f_n (x))<=M, $ 则称 ${f_n (x)}$ 在 $I$ 上*一致有界*. 

*定义* $quad$ 设 $display(sum_(n=1)^infinity u_n (x))$ 为 $I$ 上的函数项级数, $S_n (x)$ 为其部分和. 若 $ S_n (x) arrows.rr S(x), x in I, $ 则称 $display(sum_(n=1)^infinity u_n (x))$ 在 $I$ 上一致收敛到 $S_n.$

== $section 3$ 一致收敛的判别法

=== 1. Cauchy 准则
#h(1fr)

*定理* $quad$ 设 ${f_n (x)}$ 为 $I$ 上的函数序列, 则 $f_n (x)$ 在 $I$ 上一致收敛 $<==> forall epsilon>0, exists N, forall n,m>N,$ $ abs(f_n (x)-f_m (x))<epsilon, thick forall x in I. $

*证明* $quad ==>:$ 设 $f=display(lim_(n->infinity) f_n (x)).$ 由一致收敛定义 $ forall epsilon>0, exists N, forall n>N, forall x in I, abs(f_n (x)-f(x))<epsilon/2. $ 则 $forall n,m>N,$ $ abs(f_n (x)-f_m (x))<=abs(f_n (x)-f(x))+abs(f_m (x)-f(x))=epsilon/2+epsilon/2=epsilon. $

$<==:$ 由条件知 $forall x in I, {f_n (x)}$ 为 Cauchy 列, 于是 $f_n (x)->f(x) in RR.$ 

在条件中固定 $n,$ 并令 $m->infinity$ 即有 $abs(f_n (x)-f(x))<=epsilon.$

*定理* $quad display(sum_(n=1)^infinity u_n (x))$ 在 $I$ 上一致收敛 $<==> forall epsilon>0, exists N, forall n,m>N,$ $ abs(S_n (x)-S_m (x))<epsilon. $

*推论* $quad$ 若 $display(sum_(n=1)^infinity u_n (x))$ 在 $I$ 上一致收敛, 则 $u_n (x) arrows.rr 0, x in I.$

*证明* $quad u_n (x)=S_n (x)-S_(n-1) (x) arrows.rr S(x)-S(x)=0.$ #h(1fr) $square.stroked$

*例* $quad$ 设 $f_n (x)$ 在 $[a,b]$ 上连续, 且 $f_n (x) arrows.rr f(x), x in (a,b),$ 则 $f_n (x)$ 在 $[a,b]$ 上也一致收敛. 

*证明* $quad$ 由 Cauchy 准则 $forall epsilon>0, exists N, forall n,m>N, forall x in (a,b),$ $ abs(f_n (x)-f_m (x))<epsilon. $ 在上式中固定 $n,m,$ 令 $x->b-0,$ 由连续性有 $ abs(f_n (b)-f_m (b))<=epsilon. $ 从而 ${f_n (b)}$ 是 Cauchy 列. 同理 ${f_n (a)}$ 也是 Cauchy 列. #h(1fr) $square.stroked$

类似的, 若 $u_n (x)$ 在 $[a,b]$ 上连续, $display(sum_(n=1)^infinity u_n (x))$ 在 $(a,b)$ 上一致收敛, 则 $display(sum_(n=1)^infinity u_n (x))$ 在 $[a,b]$ 上同样一致收敛. 