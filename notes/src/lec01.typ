#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

= 第七章 定积分

== $section 1$ 定积分的概念
设 $y=f(x), x in [a,b]$ 且在 $[a,b]$ 上连续，$f(x)>=0.$ 则由 
$ y=f(x),y=0,x=a,x=b $
围成的图形 $S$ 称为*曲边梯形*，其面积亦记为 $S.$

设 $f(x)$ 在 $[a,b]$ 上的最大值和最小值分别为 $M$ 和 $m$, 那么图形 
$ S={(x,y) in RR^2|0<=y<=f(x) } $ 
满足
$ [a,b]times[0,m] subset & S subset [a,b]times[0,M] \
m(b-a)<=&S<=M(b-a) \
m<=&S/(a-b)<=M $
由连续函数的介值定理，$ exists c in [a,b], f(c)=S/(b-a), S=f(c)(b-a). $
此时任取 $xi in [a,b],$
$ abs(S-f(xi)(b-a)) &= abs(f(xi)-f(c))(b-a) \
&<=(M-m)(b-a) $
考虑将曲边梯形分割成两部分。取定 $x_1 in [a,b]$，再任取 $xi_1 in [a,x_1], xi_2 in [x_1,b],$ 有
$ abs(S_1-f(xi_1)(x_1-a)) &<= (M_1-m_1)(x_1-a) \
abs(S_2-f(xi_2)(b-x_1)) &<= (M_2-m_2)(b-x_1) $
即
$ abs(S-(f(xi_1)(x_1-a)+f(xi_2)(b-x_1))) &<= (M_1-m_1)(x_1-a)+(M_2-m_2)(b-x_1) \
&<= (M-m)(b-a) $
这里不加证明地利用了 $S=S_1+S_2$ 这一符合直观的事实。

于是我们可以直观地认为，将曲边梯形分割后，估算面积的误差也减小了。将分割的过程一般化，在 $[a,b]$ 中插入 $n-1$ 个点，将 $[a,b]$ 分成 $n$ 个小区间。记
$ Delta: a=x_0<x_1<...<x_(n-1)<x_n=b $
为 $[a,b]$ 的一个分割，其中 $Delta x_i = x_i - x_(i-1).$ 再记
$ lambda(Delta) = limits(max)_i Delta x_i $
称为分割 $Delta$ 的*直径*。

$x=x_i$ 将 $S$ 分成 $n$ 个小曲边梯形。取
由 $f$ 的一致连续性，
$ forall epsilon>0, exists delta>0, forall abs(x'-x'')<delta, abs(f(x')-f(x''))<epsilon. $
于是 $lambda(Delta)<epsilon arrow.r.double abs(S-hat(S)) < epsilon limits(sum)_(i=1)^n Delta x_i = epsilon(b-a). $ 

== 变速直线运动

考虑运动 $v=v(t),t in [a,b]$ 连续。

- 分割 $Delta: a=t_0<t_1<...<t_(n-1)<t_n=b.$ 

- 近似：取 $tau_i in [t_(i-1),t_i],$ 将 $[t_(i-1),t_i]$ 的路程近似为 $v(t_i)Delta t_i.$

- 求和：$limits(sum)_(i=1)^n v(tau_i)Delta t_i$ 为总路程的近似。

- 取极限：$limits(lim)_(lambda(Delta)->0)limits(sum)_(i=1)^n v(tau_i)Delta t_i$ 为总路程 $S.$
定积分定义（分割、近似、求和、取极限）

设 $f(x)$ 在 $[a,b]$ 上均有定义. 给定 $[a,b]$ 的一个分割
$ Delta: a=x_0<x_1<...<x_(n-1)<x_n=b $ 
任取 $xi_i in [x_(i-1),x_i].$ 作和式
$ sum_(i=1)^n f(xi_i)Delta x_i ("Riemann 和") $
若当 $lambda(Delta)->0$ 时，上式极限存在，且不依赖于 $Delta, {xi_i}_i$ 的选取，则称 $f(x)$ 在 $[a,b]$ 上 Riemann 可积，上述极限称为 $f(x)$ 在 $[a,b]$ 上的定积分，记为 $integral_a^b f(x)dif x.$

注：$integral_a^b f(x)dif x$ 与积分变量符号的选取没有关系，即 $integral_a^b f(x)dif x = integral_a^b f(t)dif t.$

== 定积分的 $epsilon-delta$ 描述
$f(x)$ 在 $[a,b]$ 上有定义。若有常数 $I in RR$ 使得 
$ forall epsilon>0, exists delta>0, forall Delta, xi_i, lambda(Delta)<epsilon, abs(sum_(i=1)^n f(xi_i)Delta x_i - I)<delta $ 则称 $f(x)$ 在 $[a,b]$ 上 *Riemann 可积*，称为 $f(x)$ 的*定积分*。

注： 
1. 上述 $integral_a^b f(x)dif x$ 存在则唯一（本课程仅讨论 Riemann 积分）
2. $integral_a^b f(x) dif x$ 代表曲边梯形的面积.
记 $R[a,b]$ 表示 $[a,b]$ 上全体 Riemann 可积函数构成的空间。

*定理：* $C[a,b] subset R[a,b].$

*证：*考虑确定 $Delta$ 和 $xi_i$ 的一种选取方式. 取 $Delta$ 使之 $n$ 等分 $[a,b], xi_i = x_i$ 即右端点，可得和式
$ S_n = (b-a)/n sum_(i=1)^n f(x_i) $
记 $M,m$ 为 $f(x)$ 在 $[a,b]$ 上的最大值和最小值, 
则
$ (b-a)m<=S_n<=(b-a)m, $
因而 $exists$ 子列 $n_k->infinity, limits(lim)_(k->+infinity)S_(n_k)=:I.$

来证 $forall Delta, a=y_0<...<y_n=b, lambda(Delta)<delta, forall xi_i in [y_(i-1),y_i], abs(limits(sum)_(i=1)^n f(xi_i)Delta y_i - I)<epsilon.$

考虑替换 $I$ 为上述特殊的 $Delta$ 和 $xi_i$ 所决定的和式极限. 已知
$ exists k_0 in NN, abs(S_(n_k)-I)<epsilon/2 $
于是只需证明
$ abs(sum_(i=1)^n f(xi_i)Delta y_i - sum_(i=1)^n f(x_j)Delta x_j )<epsilon/2 wide (*) $
合并两个分割，记为
$ Gamma: a=zeta_0<...<zeta_m=b $
*引理* 设 $f(x)$ 在 $[a,b]$ 上有界， $m:=inf f(x), n:=sup f(x), forall c in [a,b],$ 对任一分割 $Delta$ 和相应的 $xi_i$ 都有
$ abs(sum_(i=1)^n f(xi_i)Delta x_i - f(c)(b-a)) <= (M-m)(b-a) $
证明略去. 

于是对于每一组相邻的 $y_(i-1),y_i$  应用引理可得
$ & abs(sum_(k=1)^m f(xi_k)Delta zeta_k - sum_(i=1)^m f(xi_i)Delta y_i) \
<= & sum_(i=1)^n (M_i-m_i)Delta y_i \
< & epsilon/(4(b-a)) sum_(i=1)^n Delta y_i \
= & epsilon / 4. $
类似的
$ abs(sum_(k=1)^m f(xi_i)Delta zeta_k - sum_(i=1)^n f(x_i)Delta x_i) < epsilon/4 $
应用三角不等式即知 $(*)$ 成立.


回到变速直线运动。对于运动 $v=v(t),t in [a,b]$  连续，已知
$ cases(
	S(b)-S(a) = integral_a^b v(t)dif t ,
	v(t) = (dif S(t)) / (dif t) = S'(t)
) $
我们观察到定积分和微分之间存在类似于"逆运算"的关系.

*定理（微积分基本定理）* $f(x)$ 在 $[a,b]$ 上有定义，且 $f in R[a,b], f$ 有原函数 $F,$
则 $ integral_a^b f(x)dif x = F(b)-F(a) = F bar_a^b $
*证* 由于 $f(x) in R[a,b],$ 取 $Delta_n$ 使之 $n$ 等分 $[a,b].$
$ F bar_a^b = sum_(i=1)^n F(x_i)-F(x_(i-1)) = sum_(i=1)^n F'(xi_i)Delta x_i = sum_(i=1)^n f(xi_i)Delta x_i $
令 $n->infinity$ 即得 $F bar_a^b = integral_a^b f(x)dif x.$