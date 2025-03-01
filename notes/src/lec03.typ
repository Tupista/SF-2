#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*定理* $quad$ 设 $f$ 在 $[a,b]$ 上有界，则以下相互等价：
+ $f in R[a,b],$
+ $forall epsilon>0, exists [a,b]$ 的分割 $Delta,$ s.t. $limits(sum)_(i=1)^n w_i Delta x_i < epsilon,$
+ $forall epsilon>0, sigma>0, exists [a,b]$ 的分割 $Delta,$ s.t. $limits(sum)_(w_i>epsilon) Delta x_i < sigma.$ 

*证明* $quad$ 已知 $f in R[a,b] <==> underline(integral_a^b) f(x)dif x = overline(integral_a^b) f(x)dif x.$

$(1)==>(2)$  $quad$ 设 $f in R[a,b],$ 上下积分相等且均为 $I.$ 由 $limits(lim)_(lambda(Delta)->0)underline(S)(Delta)=underline(integral_a^b)f(x)dif x$ 有

$forall epsilon>0, exists Delta_1,Delta_2 "s.t." underline(S)(Delta_1)>I-epsilon/2, overline(S)(Delta_2)<I+epsilon/2.$ 此时取 $Delta=Delta_1 union Delta_2,$ 有
$ sum_(i=1)^n w_i Delta x_i = overline(S)(Delta)-underline(S)(Delta)<=overline(S)(Delta_2)-underline(S)(Delta_1)<epsilon. $

$(2)==>(1)$ $quad$ $limits(sum)_(i=1)^n w_i Delta x_i < epsilon ==> overline(S)(Delta)-underline(S)(Delta)<epsilon.$
$ forall epsilon, 0<=overline(integral_a^b)f(x)dif x-underline(integral_a^b)f(x)dif x<=overline(S)(Delta)-underline(S)(Delta)<epsilon. ==> overline(integral_a^b)f(x)dif x=underline(integral_a^b)f(x)dif x. $

$(2)==>(3)$ $quad forall epsilon, sigma>0, exists Delta, "s.t." limits(sum)_(i=1)^n w_i Delta x_i<epsilon sigma.$ 此时有 
$ epsilon limits(sum)_(w_i>=epsilon)Delta x_i <= limits(sum)_(w_i>=epsilon)w_i Delta x_i <= limits(sum)_(i=1)^n w_i Delta x_i < epsilon sigma ==> sum_(w_i>=epsilon) Delta x_i < sigma. $

$(3)==>(2)$ $quad$ $forall epsilon>0,$ 取 $sigma=epsilon/(2w),$ 其中 $w=M-m.$ 此时 $exists Delta, "s.t." limits(sum)_(w_i>=hat(epsilon))Delta x_i<sigma, hat(epsilon)=epsilon/(2(b-a)).$ 有 
$ sum_(i=1)^n w_i Delta x_i &= sum_(w_i<hat(epsilon))w_i Delta x_i + sum_(w_i>=hat(epsilon))w_i Delta x_i \
&< epsilon/(2(b-a))sum_(w_i<hat(epsilon))Delta x_i + w sum_(w_i>=hat(epsilon))Delta x_i \
&< epsilon/(2(b-a))(b-a) + w epsilon/(2w) \
&= epsilon/2 + epsilon/2 = epsilon. $

至此我们证明了 (1)(2)(3) 相互等价。$qed$

===  可积函数类

*定理* $quad$ 设 $f$ 在 $[a,b]$ 上有界，且只有有限个间断点，则 $f in R[a,b].$

*证明* $quad$ 设 $f$ 在 $[a,b]$ 上有 $N$ 个间断点， $forall epsilon>0,$ 可以取 $N$ 个长度 $<epsilon/(2N w)$ 的闭区间覆盖这些间断点，其中不包括 ${a,b}.$ 剩余的若干区间加上端点后分别连续，因而一致连续。故 $exists delta>0, forall x',x''$ 在同一闭区间内，$|x'-x''|<delta, |f(x')-f(x'')|<epsilon.$ 将每个小区间等分使长度均 $<delta,$ 将这些分点和原来的 $N$ 个区间端点合并为分割 $Delta,$ 对此
$ sum_(i=1)^n w_i Delta x_i < epsilon/(2N w) N epsilon + epsilon/(2(b-a))(b-a) = epsilon. qed $

*定理*（习题七第5题）$quad$ 若 $f in R[a,b], g$ 在 $[a,b]$ 上有定义且 $\# {x in [a,b]|f(x)!=g(x)}<infinity,$ 则 $g in R[a,b]$ 且 $integral_a^b f(x)dif x=integral_a^b g(x)dif x.$ （证略）

*定理* $quad$ 若 $f$ 在 $[a,b]$ 上单调，则 $f in R[a,b].$

*证明* $quad$ 不妨设 $f$ 单调增。此时 $w_i = f(x_i)-f(x_(i-1)),$
$ sum_(i=1)^n w_i Delta x_i = sum_(i=1)^n (f(x_i)-f(x_(i-1)))Delta x_i<=lambda(Delta)sum_(i=1)^n (f(x_i)-f(x_i-1))<=w lambda(Delta). $
$forall epsilon>0,$ 取 $lambda(Delta)<epsilon/w$ 即可。$qed$

*例* $quad$ 考虑黎曼函数
$ R(x)=cases(
	p^(-1) "," quad &x = q p^(-1) "," (p,q)=1,
	0 ","  &x in.not QQ,
	0 "," &x=0
) $
证明 $R(x) in R[0,1], integral_0^1 R(x)dif x=0.$

*证明* $quad$ $forall epsilon>0, sigma>0, R(x)>epsilon$ 的 $x$ 仅有有限个 $x_1,..,x_n.$  取 $n$ 个长度 $<sigma/n$ 的闭区间覆盖这 $n$ 个点，同时不覆盖 ${0,1},$ 此时 $w_i>=epsilon$ 的小区间长度之和 $<sigma ==> R(x) in R[0,1].$

此时任取一分割 $Delta,$ 在 $[x_(i-1),x_i]$ 内总 $exists xi_i in.not QQ, limits(sum)_(i=1)^m f(xi_i)Delta x_i = 0.qed$

*定理 (Lebesgue)* $quad$ 设 $f$ 在 $[a,b]$ 上有界。记 $D$ 为间断点集，则 
$ f in R[a,b] <==> forall epsilon>0, exists (x'_i,x''_i), i=1,2,.. "s.t." D in limits(union.big)_(i=1)^infinity (x'_i,x''_i), sum_(i=1)^infinity |x''_i-x'_i|<epsilon. $

这一定理暂时不能给出证明，但是可以给出几个有助于部分证明该定理的概念和定理：

对于 $f: [a,b]->RR, I subset [a,b]$ 且不退化为单点集，定义
$ w(I)=sup_(x in I)f(x)-inf_(x in I)f(x), \
w(x)=lim_(delta->0^+)w([x-delta,x+delta]). $
由单调性可知 $w(x)$ 是良定义的，我们将 $w(x)$ 称为 $f$ 在 $x$ 处的振幅，并且 $f$ 在 $x$ 处不连续 $<==> w(x)>0.$

*定理* $quad$ $forall epsilon>0, forall delta>0, D_epsilon:={x in [a,b]|w(x)>=epsilon}$ 可被总长 $<epsilon$ 的有限个开区间覆盖。

其中 $D_epsilon$ 是紧的。

== $section 3$ 定积分的性质

我们已经知道 $f in R[a,b] ==> f$ 有界，若 $\#{g!=f}$ 有限则 $g in R[a,b].$ 

在讨论前预先规定
+ $integral_a^a f(x)dif x = 0,$
+ $integral_b^a f(x)dif x = -integral_a^b f(x)dif x.$

*定理* $quad f,g in R[a,b],$ 则 $forall alpha,beta in RR,alpha f + beta g in R[a,b]$ 且
$ integral_a^b (alpha f+ beta g)(x)dif x = alpha integral_a^b f(x)dif x+ beta integral_a^b g(x)dif x. $

*证明* $quad$ 利用 $w(f+g)<=w(f)+w(g).$

*定理* $f in R[a,b],$ 则 $|f| in R[a,b]$ 且 $abs(integral_a^b f(x)dif x)<=integral_a^b abs(f(x))dif x.$

*证明* $quad$ 利用 $w(abs(f))<=w(f), abs(limits(sum)_(i=1)^n f(xi_i)Delta x_i)<=limits(sum)_(i=1)^n abs(f(xi_i))Delta x_i.$