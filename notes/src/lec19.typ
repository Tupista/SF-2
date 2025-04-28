#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*定理 (Dini)* $quad$ 设 $f_n (x) in C[a,b],$ 且 $forall x in [a,b], f_n (x)<=f_(n+1) (x),$ 且 $display(lim_(n->infinity)f_n (x)=f(x)).$ 则 $ f(x) in C[a,b] quad <==> quad f_n (x) arrows f(x), x in [a,b]. $

*定理' *$quad$ 设 $u_n (x) in C[a,b],$ 且 $forall x in [a,b],u_n (x)>=0,$ 且 $display(sum_(n=1)^infinity u_n (x))$ 收敛，则 $ display(sum_(n=1)^infinity u_n (x)) in C[a,b] quad <==> quad sum_(n=1)^infinity u_n (x) arrows S(x), x in [a,b]. $

*例* $quad$ 证明 $display(sum_(n=1)^infinity x^n (ln x)/(1+abs(ln ln 1/x)))$ 在 $x in (0,1)$ 一致收敛。

*证明* $quad$ Dini 定理仅适用于闭区间，无法直接运用。

令 $display(u_n (x)=x^n (ln x)/(1+abs(ln ln 1/x))), thick display(lim_(x->0^+) u_n (x)=0), display(lim_(x->1^-) u_n (x)=0.)$ 若补充定义 $u_n (0)=u_n (1)=0,$ 则 $u_n (x)$ 是 $(0,1)$ 上的连续函数。对于 $x in (0,1),$ $sum u_n (x)$ 收敛于 $ S(x)=x/(1-x)dot (ln x)/(1+abs(ln ln 1/x)), $ 补充定义 $S(0)=S(0+0)=0,S(1)=S(1-0)=0.$ 此时 $sum u_n (x)=S(x), x in [0,1].$

$u_n (x),S(x) in C[0,1], u_n (x)<=0.$ 由 Dini 定理 $sum u_n (x)$ 在 $[0,1]$ 一致收敛到 $S(x).$ #h(1fr) $square.stroked$

*注* $quad$ 不能用 M 判别法说明一致收敛性。

$display(x^n abs(ln x)/(1+abs(ln ln 1/x))<=M_n ==>M_n>=abs(u_n (1-1/n))=(1-1/n)^n abs(ln (1-1/n))/(1+abs(ln ln (1+1/(n-1))))),$

$display((u_n (1-1/n))/(1/(n ln n)))=e^(-1),$ 于是 $sum M_n$ 发散，无法使用 M 判别法判别一致收敛。

极限函数连续性为交换求极限顺序提供了通路：对于 $f_n,f in C[a,b],$ $ lim_(x->x_0) lim_(n->infinity) f_n (x)=lim_(n->infinity) lim_(x->x_0) f_n (x). $ 对于开区间的情形，设 $f_n (x) arrows f(x), x in [a,b),$ 则 $ lim_(x->b^-) lim_(n->infinity) f_n (x)=lim_(n->infinity) lim_(x->b^-) f_n (x). $

*例* $quad$ 设 ${x_n}$ 为互不相同的点列，则 $display(sum_(n=1)^infinity "sgn"(x-x_n)/2^n)$ 在 $x in.not {x_i}$ 连续，在 $x in {x_i}$ 间断。

*证明* $quad$ 当 $x^* in.not {x_i},$ 则 $x^*$ 为 $u_n (x)$ 的连续点，$display(lim_(x->x^*) u_n (x)=u_n (x^*)),$ 从而 $S(x^*)=display(lim_(x->x^*))S(x).$ 否则设 $x=x_k,$ 则 $S_k (x)$ 在 $x_k$ 间断，$display(sum_(n=k+1)^infinity u_n (x))$ 在 $x_k$ 连续。#h(1fr) $square.stroked$

\*一类更强的连续性条件：$ forall epsilon>0, exists delta>0 "s.t." forall x',x'', abs(x'-x'')<delta, forall n>=1, abs(f_n (x')-f_n (x''))<epsilon, $ 则称 ${f_n (x)}$ 为等度连续和。(Arzene-Ascoli 定理)

=== 极限函数的积分

*定理* $quad$ 设 $f_n (x) arrows f(x), x in [a,b].$ 若 $f_n in R[a,b],$ 则 $f in R[a,b],$ 且 $ integral_a^b f(x)dif x=lim_(n->infinity) integral_a^b f_n (x)dif x. $

*证明* $quad$ 为了证明 $f in R[a,b],$ 只要证 $forall epsilon>0, exists Delta, sum w_i (f)Delta x_i<epsilon.$

$forall epsilon>0,$ 由 $f_n (x) arrows f(x), x in [a,b]$ 知 $exists N, forall n>=N, abs(f_n (x)-f(x))<epsilon/(4(b-a)),$ 取 $n=N$ 时也成立。又 $f_N in R[a,b], exists Delta "s.t." sum w_i (f_N) Delta x_i<epsilon/4.$ 此时 $w_i (f)<=w_i (f_N)+epsilon/(2(b-a)),$ 于是 $ sum w_i (f) Delta x_i<=sum(w_i (f) + epsilon/(2(b-a)))Delta x_i<epsilon/4+epsilon/2<epsilon. $ 

$forall epsilon>0,$ 对于上述 $N,forall n>N,$ $ abs(integral_a^b f_n (x)dif x-integral_a^b f(x)dif x)<=integral_a^b abs(f_n (x)-f(x))dif x<=epsilon/(4(b-a))integral_a^b dif x=epsilon/4. $ #h(1fr) $square.stroked$

*定理'* $quad$ 设 $display(sum_(n=1)^infinity u_n (x))$ 在 $[a,b]$ 上一致收敛，且 $u_n (x) in R[a,b],$ 则 $display(sum_(n=1)^infinity u_n (x)) in R[a,b],$ 且 $ integral_a^b sum_(n=1)^infinity u_n (x)dif x=sum_(n=1)^infinity integral_a^b u_n (x)dif x. $

*例* $quad forall x in (-1,1), display(sum_(n=1)^infinity x^n/n=-ln(1-x)).$

*证明* $quad forall x_0 in (-1,1),$ 取 $r in (0,1) "s.t." x_0 in [-r,r].$ 则 $sum x^n$ 在 $x in [-r,r]$ 一致收敛到 $1/(1-x),$ $ integral_0^x_0 sum_(n=0)^infinity x^n dif x = sum_(n=0)^infinity integral_0^x_0 x^n dif x=sum_(n=0)^infinity x_0^(n+1)/(n+1)=sum_(n=1)^infinity x_0^n/n =integral_0^x_0 1/(1-x)dif x=-ln(1-x_0). $ #h(1fr) $square.stroked$

=== 极限函数的导数

*定理* $quad$ 设 $f_n (x)$ 在 $[a,b]$ 上有定义，且

- $exists x_0 in [a,b] "s.t." display(lim_(n->infinity) f_n (x_0))$ 存在,

- $f_n$ 在 $[a,b]$ 上可导，且 $f_n (x) arrows g(x), x in [a,b],$
则 $exists [a,b]$ 上的函数 $f "s.t." f_n (x) arrows f(x), x in [a,b],$ 且 $f'(x)=g(x), forall x in [a,b].$

*证明* $quad$ 首先证 $forall epsilon>0, exists N, forall n,m>N, abs(f_n (x)-f_m (x))<epsilon, forall x in [a,b].$

令 $phi_(n,m) (x)=f_n (x)-f_m (x),$ 则 $ phi_(n,m) (x)=phi_(n,m) (x_0)+phi'_(n,m) (xi)(x-x_0). $  由条件 $exists N, forall n,m>N,$ $ abs(phi_(n,m) (x_0))=abs(f_n (x_0)-f_m (x_0))<epsilon/2, \ abs(phi'_(a,b) (x))=abs(f'_n (x)-f'_m (x))<epsilon/(2(b-a)). $ 此时 $ abs(f_n (x)-f_m (x))=abs(phi_(n,m) (x))<=abs(phi_(n,m) (x_0))+abs(phi'_(n,m) (xi) (x-x_0))<epsilon/2+epsilon/2=epsilon. $

下一性质留待下节课证明。