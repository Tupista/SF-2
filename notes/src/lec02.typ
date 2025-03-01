#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

考虑 $F'(x)=f(x)$, 有 
$ (integral f(x)dif x)|_a^b = integral_a^b f(x)dif x = F(x)| _a^b $
$ integral_a^b F'(x)dif x = F(x)|_a^b = integral_a^b dif F(x) $
某种意义上，可以认为积分和微分是“逆运算”，两者可以互相抵消。

另外，如果已知 $f(x) in R[a,b],$ 要计算 $integral_a^b f(x)dif x,$ 只需要取特定的一系列分割构成一列特定的 Riemann 和，其极限即为所求的定积分. 例如取 $n$ 等分点构成的分割 $Delta_n,$ 中间点可以取 $x_(i-1),x_i,(x_(i-1)+x_i)/2,$ 如果取 $xi_i = x_i$ 就能得到
$ S_n (f) = sum_(i=1)^n f(xi_i)Delta x_i = (b-a)/n sum_(i=1)^n f(x_i) $
在 $n->infinity$ 时 $S_n (f) -> integral_a^b f(x)dif x.$ 这类求法在原函数难以写出解析式式十分有效。

*例* $quad$ 计算 $integral_0^1 x^alpha dif x.$

利用 Newton-Lebnitz 公式有 
$ integral_0^1 x_alpha dif x = 1/(1+alpha) x^(1+alpha)|_0^1 = 1/(1+alpha). $
或者利用定义写出
$ integral_0^1 x_alpha dif x = lim_(n->infinity)sum_(i=1)^n (i/n)^alpha = lim_(n->infinity) (1^alpha+...+n^alpha)/(n^(1+alpha)) = 1/(1+alpha). quad("Stolz") $

== $section 2$ *可积性*
我们在前文中对积分的直观定义依赖于函数的连续性，但 Riemann 可积的函数不都是连续的。下面就来讨论函数可积的条件。

+ 可积的必要条件

 *定理* $quad$ 若 $f(x) in R[a,b],$ 则 $f$ 有界。

 *证* $quad$ 反设 $f$ 无界，无妨设 $f$ 无上界。由 $f(x) in R[a,b],$ 对于 $epsilon=1, exists delta>0, $ 对于任意 $n$ 等分 $(b-a)/n < delta, $ 取 $xi_i=x_i,$ 有 $abs((b-a)/n limits(sum)_(i=1)^n f(x_i) - I)<1,$ 其中 $I=integral_a^b f(x)dif x.$

 设 $f(x)$ 在 $[x_(j-1),x_j]$ 上无上界。对 $i !=j$ 取 $xi_i=x_i, forall xi_j in [x_(j-1),x_j]$ 构造 Riemann 和 $S_n (xi_j)$ 
 $ S_n (xi_j)= (b-a)/n sum_(i=1)^n f(xi_i) = (b-a)/n (sum_(i=1,i!=j)^n f(x_i) + f(xi_j)) $
 由于 $abs(S_n (xi_j))<1, $ 有 
 $ & abs(S_n-S_n (xi_j)) <= abs(S_n-I)+abs(S_n (xi_j)-I) <= 2 \
 => & abs((b-a)/n (f(xi_j)-f(x_j)))<2, quad forall xi_j in [x_(j-1),x_j]. $
 这与 $f$ 在 $[x_(j-1),x_j]$ 上无上界矛盾。$qed$

 上面的定理说明有界是可积的必要条件，但有界却不是可积的充分条件。考虑 Dirichlet 函数
 $ D(x) = cases(
	1 "," x in QQ, 0 "," x in.not QQ
 )thick, quad x in [0,1] $
 设 $Delta_n$ 为 $[0,1]$ 的 $n$ 等分。取 $xi_i in [x_(i-1),x_i] sect QQ, eta_i in [x_(i-1),x_i] backslash QQ,$ 则 $S_n (xi) = 0, S_n (eta) = 1.$
 故 $limits(lim)_(lambda(Delta)->0)limits(sum)_(i=1)^n f(xi_i)Delta x_i$ 不存在，因此 Dirichlet 函数不可积。

+ Darboux 理论
 $ f: [a,b]->RR, Delta: a=x_0<..<x_n=b, xi_i in [x_(i-1),x_i], S(Delta,xi)=sum_(i=1)^n f(xi_i)Delta x_i. $
 观察上式我们发现影响 $S$ 的因素太多，难以具体分析。为了简化问题，考虑消除 $xi$ 的具体取法对 $S$ 的影响。

 今令 $m_i:=limits(inf)_(x in [x_(i-1),x_i])f(x), M_i:=limits(sup)_(x in [x_(i-1),x_i])f(x).$ 则 $forall xi_i in [x_(i-1),x_i], m_i <= f(xi_i)<=M_i.$

 记
 $ underline(S)(Delta)=sum_(i=1)^n m_i Delta x_i, quad overline(S)(Delta)=sum_(i=1)^n M_i Delta x_i $
 两者分别被称为 *Darboux 小和* 和 *Darboux 大和*，根据定义可知
 $ underline(S)(Delta) <= S(Delta,xi) <= overline(S)(Delta), $
 其中等号未必可以成立。

 将分割 $Delta$ 记为 ${x_0,..,x_n}, Delta_1, Delta_2$ 为 $[a,b]$ 的两个分割。若上述分割记法下$Delta_1 subset Delta_2,$ 则称 $Delta_2$ 是 $Delta_1$ 的*细分*。此时有
 $ underline(S)(Delta_1) <= underline(S)(Delta_2) <= overline(S)(Delta_2) <= overline(S)(Delta_1). $
 证明上述不等式只需要证明 $Delta_1={a,b},Delta_2={a,c,b},a<c<b$ 的情形，其余可以递归地得到证明。在上述特殊情形下，
 $ underline(S)(Delta_2) &= m_1(c-a)+m_2(b-c) \ 
 &>= m(c-a)+m(b-c)\
 &= underline(S)(Delta_1). $
 $overline(S)$ 的证明是类似的。
 
 *推论* $quad forall Delta_1,Delta_2, underline(S)(Delta_1) <= overline(S)(Delta_2).$

 *证* $quad$ 取 $Delta = Delta_1 union Delta_2, underline(S)(Delta_1)<=underline(S)(Delta)<=overline(S)(Delta)<=overline(S)(Delta_2). qed$

 *定义* 
 $ underline(integral_a^b)f(x)dif x = sup_(Delta) underline(S)(Delta), \
 overline(integral_a^b)f(x) dif x = inf_(Delta) overline(S)(Delta), $
 分别称为 $f(x)$ 的下积分和上积分。根据推论有
 $ underline(integral_a^b) f(x)dif x <= overline(integral_a^b)f(x)dif x. $

 *定理(Darboux)* $quad overline(integral_a^b)f(x)dif x = limits(lim)_(lambda(Delta)->0) overline(S)(Delta).$

 将上述命题转化成 $epsilon-delta$ 语言来表述: $forall epsilon > 0, exists delta>0, forall lambda(Delta)<delta, overline(S)(Delta)<overline(integral_a^b) f(x)dif x + epsilon.$ 可以去掉绝对值的原因是始终有 $overline(integral_a^b)f(x)dif x <= overline(S)(Delta).$

 *证* $quad$ 由 $overline(integral_a^b)f(x)dif x = limits(inf)_(lambda(Delta)->0)overline(S)(Delta)$ 知 $forall epsilon>0, exists Gamma: a=y_0<..<y_N=b, "s.t."$
 $ overline(S)(Gamma) < overline(integral_a^b)f(x)dif x+ epsilon/2. $
 为了证明该定理，要找 $delta>0, "s.t." lambda(Delta)<delta, overline(S)(Delta)<overline(integral_a^b)f(x)dif x+ epsilon.$ 而在给出上面的分割 $Gamma$ 后，只需要限制 $overline(S)(Delta)$ 和 $overline(S)(Gamma)$ 相差不超过 $epsilon/2$ 即可。

 先取 $delta_0=limits(min)_(1<=i<=n) Delta y_i >0.$ 限制分割 $Delta$ 满足 $lambda(Delta)<delta_0,$ 则 $[x_(i-1),x_i]$ 中之多有一个 $Gamma$ 中的分点。此时仍然不好直接比较 $overline(S)(Gamma)$ 和 $overline(S)(Delta),$ 考虑转化为估计 $overline(S)(Delta)$ 和 $overline(S)(Gamma union Delta)$ 的差异。由于 $overline(S)(integral_a^b)f(x)dif x <= overline(S)(Delta union Gamma) <= overline(S)(Gamma)<overline(integral_a^b)f(x)dif x+epsilon/2,$ 只需要保证 $overline(S)(Delta)-overline(S)(Delta union Gamma)<epsilon/2$ 即可。

 下面估计每一个 $Delta$ 的小区间里 $overline(S)(Delta)$ 和 $overline(S)(Delta union Gamma)$ 的误差大小。对于 $y_j in [x_(i-1),x_i],$ 
 $ & underbrace(M_i (x_i-x_(i-1)), overline(S)(Delta)) - underbrace((M'_i (y_j-x_(i-1)) + M''_i (x_i-y_j)), overline(S)(Delta union Gamma)) \
 <= & M(x_i-x_(i-1))-m(x_i-x_(i-1)) \
 <= & (M-m)lambda(Delta). $

 存在误差的小区间数不超过 $Delta$ 的分点数 $n-1,$ 因而总误差 $<=N(M-m)lambda(Delta).$

  要使 $N(M-m)lambda(Delta)<epsilon/2,$ 可令 $delta<=epsilon/(2N(M-m)).$

  于是取 $delta=min{epsilon/(2N(M-m)),delta_0}$ 即可。此时
  $ overline(S)(Delta)<overline(S)(Delta union Gamma)+epsilon/2<=overline(S)(Gamma)+epsilon/2<overline(integral_a^b)f(x)dif x+ epsilon. qed $

  完全相同的论述给出 
  $ underline(integral_a^b)f(x)dif x = lim_(lambda(Delta)->0) underline(S)(Delta). $

  *定理* $quad f in R[a,b] <==> underline(integral_a^b)f(x)dif x = overline(integral_a^b)f(x)dif x.$

  *证* $quad (<==) $ 令 $I = underline(integral_a^b)f(x)dif x=overline(integral_a^b)f(x)dif x.$ 有
  $ forall epsilon>0, exists delta>0, "s.t." lambda(Delta)<delta, I-epsilon<underline(S)(Delta)<=S(Delta,xi)<=overline(S)(Delta)<I+epsilon. $
  即 $abs(I-S(Delta,xi))<epsilon.$ 于是 $f(x)$ 可积且 $integral_a^b f(x)dif x=I.$

  $(==>)$ 由 $f(x) in R[a,b]$ 有
  $ forall epsilon>0, exists delta>0, forall lambda(Delta)<delta, abs(S(Delta,xi)-I)<epsilon/2. $
  又由 $S(Delta,xi)$ 的取值范围 $subset [underline(S)(Delta),overline(S)(Delta)]$ 可知
  $ I-epsilon/2<underline(S)(Delta)<=overline(S)(Delta)<=I+epsilon/2. $
  所以 $overline(integral_a^b)f(x)dif x-underline(integral_a^b)f(x)dif x <=overline(S)(Delta)-underline(S)(Delta)<=epsilon ==> underline(integral_a^b)f(x)dif x = overline(integral_a^b)f(x)dif x. qed$