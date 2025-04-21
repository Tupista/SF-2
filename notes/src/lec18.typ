#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*定理 (Abel)* $quad$ 设 $u_n (x), v_n (x)$ 在 $I$ 上有定义, 且满足 
- $sum u_n (x)$ 在 $I$ 上一致收敛, 
- ${v_n (x)}$ 对 $forall x in X$ 为单调序列, 且 $v_n (x)$ 一致有界, 
则 $sum u_n (x) v_n (x)$ 一致收敛. 

*证明* $quad forall epsilon>0,$ 找 $N$ 使 $forall n>N, forall p>=1 "s.t." forall x in I,$ $ abs(sum_(k=n+1)^(n+p) u_k (x) v_k (x))<epsilon. $

记 $S_n (x)=sum_(k=1)^n u_k (x), T_n (x)=S_n (x)-S(x),$ 则上述和式可以写成 $ abs(sum_(k=n+1)^(n+p) (S_k-S_(k-1))v_k)&=abs(S_(n+p)v_(n+p)-S_n v_(n+1)+sum_(k=n+1)^(n+p-1) S_k (v_k-v_(k+1))) \ &= abs(T_(n+p)v_(n+p)-T_n v_(n+1)+sum_(k=n+1)^(n+p-1)T_k (v_k-v_(k+1))) $ $forall epsilon>0, exists N, forall n>N, abs(T_n (x))<epsilon/(5M),$ 此时 $ abs(sum_(k=n+1)^(n+p) u_k (x) v_k (x) )<=epsilon/(5M) (abs(v_(n+p))+abs(v_(n+1))+abs(v_(n+1)-v_(n+p)))<=4/5 epsilon<epsilon. $ #h(1fr) $square.stroked$

*例* $quad display(sum_(n=1)^infinity (-1)^n/(n+x))$ 在 $[0,+infinity)$ 上一致收敛, 但不绝对收敛. 

*证明* $quad$ 级数在 $x=0$ 处不绝对收敛. 

记 $u_n (x)=(-1)^n, v_n (x)=1/(n+x).$ 则 $sum u_n (x)$ 一致有界而 $v_n (x)$ 单调且一致收敛到 $0$. 由 Dirichlet 判别法知该函数项级数在 $[0,+infinity)$ 上收敛.  #h(1fr) $square.stroked$

*例* $quad display(sum_(n=1)^infinity a_n / n^x)$ 在 $[1,+infinity)$ 上一致收敛 $<==> display(sum_(n=1)^infinity a_n/n)$ 收敛. 

*证明* $quad ==>$ 属显然.  $<== display(sum a_n/n^x=sum a_n/n dot 1/(n^(x-1))),$ 其中 $display(sum a_n/n)$一致收敛, $display(1/n^(x-1))$ 单调且一致有界. 由 Abel 判别法知 $display(sum_(n=1)^infinity a_n/n^x)$ 一致收敛.  #h(1fr) $square.stroked$

*例* $quad$ 讨论级数 $display(sum_(n=1)^infinity (-1)^n (1-x)x^n)$ 在 $[0,1]$ 上的一致收敛性、绝对收敛性和绝对一致收敛性. 

*解* $quad sum (-1)^n$ 一致有界, $(1-x)x^n$ 单调减. 只需说明 $(1-x)x^n arrows 0,$ 这是已知的结论. 

$sum (1-x)x^n=(1-x)display(x^n/(1-x^n))$ 收敛 $==>$ 绝对收敛. 

然而上述和函数并不一致收敛, 因为和函数在 $x=1$ 不连续. 于是级数不绝对一致收敛. #h(1fr) $square.stroked$

== $section 4$ 一致收敛的极限函数 / 和函数的性质

=== 极限函数 / 和函数的连续性

函数 $f_n (x)=x^n, x in [0,1]$ 的极限函数不是连续函数. 关于极限函数连续性, 我们有如下结论: 

*定理* $quad$ 设 $f_n (x) in C[a,b], forall n>=1,$ 且 $f_n (x) arrows f(x), x in [a,b],$ 则 $f(x) in C[a,b].$

*证明* $quad forall x_0 in [a,b],$ 来证 $f(x)$ 在 $x=x_0$ 处连续. 这是因为连续性是一局部的性质. 

回忆连续性的定义: $forall epsilon>0, exists delta>0 "s.t." forall abs(x-x_0)<delta, abs(f(x)-f(x_0))<epsilon. $

$ abs(f(x)-f(x_0))&=abs((f(x)-f_n (x)) + (f_n (x)-f_n (x_0))+(f_n (x_0)-f_(x_0))) \ &= abs(f(x)-f_n (x))+abs(f_n (x)-f_n (x_0))+abs(f_n (x_0)-f(x_0)), $ 前后两项可以用一致收敛限制, 中间一项用 $f_n (x)$ 的连续性限制. 

$f_n (x)$ 在 $x=x_0$ 连续 $==> exists delta>0,forall abs(x-x_0)<delta, abs(f_n (x)-f(x))<epsilon/3.$ 但是这里的 $delta=delta(n)$ 仍取决于 $n$ 的选取, 需要进一步理清逻辑. 

$forall epsilon>0, f_n (x) arrows f(x) ==>exists N, forall n>N, abs(f_n (x)-f(x))<epsilon/3.$ 

特别的 $abs(f(x)-f_N (x))<epsilon/3, abs(f(x_0)-f_N (x_0))<epsilon/3.$ 由 $f_N (x)$ 在 $x_0$ 处连续, $exists delta>0 "s.t."$ \ $abs(x-x_0)<delta ==> abs(f_N (x)-f_N (x_0))<epsilon/3.$ 此时即有 $abs(f(x)-f(x_0))<epsilon.$ #h(1fr) $square.stroked$

注意到上述论证不要求区间是闭区间, 任意区间 $I$ 的版本均成立. 这是因为连续性是局部性质, 与整体区间的选取无关. 

*定理* $quad$ 设 $f_n$ 在 $(a,b)$ 有定义, $f_n (x)->f(x), forall x in (a,b).$ 给定 $x_0 in (a,b),$ 若 $exists delta_0>0,$ \ s.t. $f_n (x) arrows f(x), x in (x_0-delta_0,x_0+delta_0),$ 则 $f$ 在 $x=x_0$ 连续. 

*证明* $quad$ 这是上一定理的直接结果. #h(1fr) $square.stroked$

*定义* $quad$ 设 $f_n (x)->f(x),x in (a,b),$ 且 $forall [c,d] subset (a,b), f_n (x) arrows f(x), x in [c,d],$ 则称 $f_n (x)$ 在 $(a,b)$ 上*内闭一致收敛*. 

*定理* $quad$ 设 $f_n (x)$ 在 $(a,b)$ 上内闭一致收敛到 $f(x).$ 若 $f_n (x) in C(a,b), forall n>=1,$ 则 $f(x) in C(a,b).$

*例* $quad x^n$ 在 $(0,1)$ 上内闭一致收敛到 $0.$

*例* $quad$ 设 ${a_n}$ 单调, $limits(lim)_(n->infinity) a_n=0,$ 则 $display(sum_(n=1)^infinity a_n cos n x)$ 在 $(0,2pi)$ 内闭一致收敛. 

*证明* $quad$ 任取 $delta_0>0,$ 考虑闭区间 $[delta_0,2pi-delta_0] subset (0,2pi).$

$a_n$ 单调趋于 $0, S_n (x)=display(sum_(k=1)^n cos n x=(sin x/2-sin (2n+1)/2 x)/(2 sin x/2) ==> abs(S_n (x))<=1/(sin x/2)<=1/(sin delta_0/2)).$ 

于是 $S_n (x)$ 一致有界. 由 Dirichlet 判别法知原级数在 $[delta_0,2pi-delta_0]$ 上一致收敛, 再由 $delta_0$ 的任意性得到原级数在 $(0,2pi)$ 上内闭一致收敛. #h(1fr) $square.stroked$

上述极限函数的连续性由一致收敛性保证, 然而不一致收敛未必使极限函数不连续; 换言之, 极限函数连续不能推出一致收敛性: 

*例* $quad f_n (x)=display((n x)/(1+n^2x^2)), x in [0,1].$ $f_n (x)->0, display(f_n (1/n)=1/2)$ 不一致收敛. 

然而在补上一些条件之后, 上面的推断就可以成立: 

*定理 (Dini)* $quad$ 设 $f_n (x)$ 在 $[a,b]$ 上单调趋于 $f(x),$ \ 若 $f_n (x),f(x) in C[a,b],$ 则 $f_n (x) arrows f(x), x in [a,b].$

*证明* $quad forall epsilon>0, exists N, forall n>N, abs(f_n (x)-f(x))<epsilon.$

任给 $x in [a,b],$ 由 $f_n (x)->f(x), exists N, forall n>N, abs(f_n (x)-f (x))<epsilon/3.$ 特别的 $abs(f_N (x)-f(x))<epsilon/3.$

再由 $f,f_N$ 在 $x$ 处连续 $exists delta>0 "s.t." forall x' in (x-delta,x+delta),$ $ abs(f_N (x)-f_N (x'))<epsilon/3, quad abs(f(x)-f(x'))<epsilon/3, $ 从而 $abs(f_N (x')-f(x'))<epsilon.$

$display(union.big_(x in [a,b]) (x-delta_x,x+delta_x))$ 有有限子覆盖, 设为 $display(union.big_(i=1)^m (x_i-delta_i,x_i+delta_i)) supset [a,b],$ 再取 $N=max{N_x_i},$ \ $forall n>N, forall x' in [a,b], exists i, x' in (x_i-delta_i,x_i+delta_i),$ $ f_n (x')>=f_N (x')>=f_N_i (x')>=f(x')-epsilon, $ 另一个方向的不等式是显然的. 于是 $abs(f_n (x')-f(x'))<epsilon.$ #h(1fr) $square.stroked$