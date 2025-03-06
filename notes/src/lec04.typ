#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

== $section 3$ 定积分的性质

*定理* $quad$ 设 $f,g in R[a,b]$ 且 $f(x)<=g(x), forall x in [a,b],$ 则 
$ integral_a^b f(x)dif x<=integral_a^b g(x)dif x. $

$forall Delta, xi, limits(sum)_(i=1)^n f(xi_i)Delta x_i <= limits(sum)_(i=1)^n g(xi_i) Delta x_i.$ 特别的 $f(x)>=0 ==> integral_a^b f(x)dif x>=0.$ 

类似的可由 $-abs(f(x))<=f(x)<=abs(f(x))$ 推出
$ -integral_a^b abs(f(x))dif x<=integral_a^b f(x)dif x<=integral_a^b abs(f(x))dif x. $

*推论* $quad$ 设 $f in C[a,b],$ 则 $exists xi in [a,b],$
$ integral_a^b f(x)dif x = f(xi)(b-a). $
*证明* $quad$ 因为 
$ m<= (integral_a^b f(x)dif x)/(b-a)<=M, $
由介值定理得证. 

*定理* $quad$ $f,g in R[a,b] ==> f(x)g(x) in R[a,b].$

*证明* $quad$ $forall epsilon>0, exists Delta, "s.t."$
$ limits(sum)_(i=1)^n w_i (f)Delta x_i<epsilon, wide limits(sum)_(i=1)^n w_i (g)Delta x_i <epsilon. $

$w_i (f g) = limits(sup)_(x',x'' in [x_(i-1),x_i]){(f g)(x') - (f g)(x'')},$ 其中

$ f(x')g(x')-f(x'')g(x'') &= f(x')(g(x')-g(x''))+g(x'')(f(x')-f(x'')) \
&<= f(x')w_i (g)+g(x'')w_i (f).$

由 $f,g$ 可导知 $f,g$ 有界, $exists M>0 "s.t." abs(f(x)),abs(g(x))<M, forall x in [a,b].$

此时 $w_i (f g)<=M(f(x')+g(x'')),$
$ sum_(i=1)^n w_i (f g)Delta x_i <= M sum_(i=1)^n (w_i (f) + w_i (g))Delta x_i < 2M epsilon. qed $

对于一般的可积函数, 将其“取倒数”后未必可积：例如 $f(x)=x, x in [0,1], f^(-1)(x)$ 无界. 函数的复合运算也是类似的：令
$ f(x)=cases(
	1 "," quad x>0, 0 "," quad x<=0
), wide g(x)=cases(
	q^(-1) "," quad x = p/q, 0 "," x in.not QQ
) $
则 $f,g in R[0,1]$ 且 $f compose g = D(x) in.not R[0,1].$

*定理* 
$ f in R[a,b], c in [a,b] <==> f in R[a,c] inter R[c,b] and integral_a^b f(x)dif x = integral_a^c f(x)dif x+ integral_b^c f(x)dif x. $

*证明* $quad$ 首先来证明两侧的可积性是等价的. 

$(==>)$ 来证 $forall [a_1,b_1] subset [a,b], f in R[a_1,b_1].$

$forall epsilon>0, f in R[a,b] ==> exists Delta "s.t." limits(sum)_(i=1)^n w_i Delta x_i < epsilon.$ 向 $Delta$ 中加入 ${a_1,b_1}$ 两个分点并且只取在 $[a_1,b_1]$ 中的分点, 所得的和式仍然 $<epsilon.$ 故 $f in R[a_1,b_1].$

$(<==)$ 合并两个 $<epsilon/2$ 的和式, 结合相同的论述即可证明. 

至于证明两侧积分结果相同, 取 $Delta$ 为 $[a,b]$ 的 $n$ 等分 $union {c}, Delta_1 = Delta inter [a,c], Delta_2 = Delta inter [c,b],$
$ S(Delta) = S(Delta_1) + S(Delta_2), quad n->infinity, lambda(Delta)->0. $
等式两侧取极限即可证明结论成立.  $qed$

可积函数的性质有时候还不够强. 为了解决问题的方便, 可以利用两类特殊函数——阶梯函数和连续函数——来拟合可积函数. 下面形式化地给出阶梯函数的定义：

*定义* $quad$ 给定 $[a,b]$ 的一个分割 $Delta, [a,b] = limits(union.big)_(i=1)^n [x_(i-1),x_i] = limits(union.big)_(i=1)^n I_i.$ 令 $g(x)=a_i, x in I_i,$ \ 则称 $g$ 为*阶梯函数*. 

*命题* $quad$ 设 $f in R[a,b]. forall epsilon>0, exists$ 阶梯函数 $g "s.t." integral_a^b abs(f-g)(x)dif x<epsilon.$

*证明* $quad$ $f in R[a,b] ==> forall epsilon>0, exists Delta, limits(sum)_(i=1)^n (M_i - m_i)Delta x_i < epsilon.$

延续阶梯函数定义中的符号, 令 $g(x)=limits(sup)_(x in [x_(i-1),x_i]) f(x), x in I_i,$ 再令
$ hat(f)(x)=cases(
	M_i "," quad &x in (x_(i-1),x_i),
	f(x) "," quad &x = x_i
) $
则 ${x | g(x)!=hat(f)(x)} subset Delta ==> integral_a^b g(x)dif x = integral_a^b hat(f)(x)dif x.$

$ integral_a^b abs(f-g)(x)dif x &<= integral_a^b abs(f-hat(f))(x)dif x + underbrace(integral_a^b abs(hat(f)-g)(x)dif x, =0) \
&= sum_(i=1)^n integral_(x_(i-1))^x_i underbrace((hat(f)(x)-f(x)),>=0)dif x \
&<=sum_(i=1)^n w_i Delta x_i \
&< epsilon. qed $

*命题* $quad$ 设 $f in R[a,b],$ 则  $forall epsilon>0, exists h in C[a,b], integral_a^b abs(f-h)(x)dif x < epsilon.$

*证明* $quad$ $forall epsilon>0, exists Delta "s.t." limits(sum)_(i=1)^n w_i Delta x_i < epsilon.$ 令 $h$ 的图象为 $(x_(i-1),f(x_(i-1)),(x_i,f(x_i)))$ 的连线首尾相连, 此时有
$ integral_a^b abs(f-h)(x)dif x = sum_(i=1)^n integral_(x_(i-1))^(x_i) abs(f-h)dif x<=sum_(i=1)^n w_i Delta x_i < epsilon. qed $

*注* $quad$ 另外设 $abs(f)<=M,$ 则 $abs(h)<=M,$ 且
$ integral_a^b (f-h)^2 dif x <= 2M integral_a^b abs(f-h)dif x<=2M epsilon. $

*例* $quad$ 设 $f in C[a,b].$
+ $forall [a_1,b_1] subset [a,b], integral_(a_1)^(b_1)f(x)dif x =0,$ 则 $f(x) eq.triple 0, forall x in [a,b].$ 

 反证, 找到一个 $f(x)>0$ 的点, 利用邻域内的连续性即可推出矛盾. 

+ $f >=0,$ 则 $integral_a^b f(x)dif x=0 ==> f(x)eq.triple 0.$

== $section 4$ 原函数的存在性与定积分的计算

=== 1. 变上限定积分

设 $f in R[a,b], forall x in [a,b], Phi(x) := integral_a^x f(t)dif t, Psi(x):=integral_x^b f(t)dif t.$

*定理* $quad$ 设 $f in R[a,b].$
+ $Phi(x) in C[a,b],$
+ $f in C[a,b] ==> Phi'(x)=f(x).$

*证明* $quad$ $f in R[a,b] ==> exists M, abs(f(x))<=M.$
+ $abs(Phi(x)-Phi(x'))=abs(integral_x'^x f(x)dif x)<=abs(integral_x'^x M dif x)=M abs(x-x'),$ 由 Lipschitz 条件知 $Phi(x) in C[a,b].$
+ $forall x_0, x in [a,b], x_0<x$
$ Phi'(x)=lim_(x->x_0^+)(Phi(x)-Phi(x_0))/(x-x_0)=lim_(x->x_0^+) (integral_(x_0)^x f(x)dif x)/(x-x_0)=lim_(x->x_0^+)f(xi_x)=f(x_0).qed $