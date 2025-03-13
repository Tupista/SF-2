#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*例* $quad$ 计算 $I_n=integral_0^(pi/2)sin^n x dif x.$

*解* $quad$
$ I_n &= integral_0^(pi/2)sin^n x dif x = -integral_0^(pi/2)sin^(n-1)x dif cos x \
&= -(sin^(n-1)x cos x)|_0^(pi/2) + (n-1)integral_0^(pi/2)sin^(n-2)x cos^2 x dif x \
&=(n-1)integral_0^(pi/2)(sin^(n-2)x-sin^n x)dif x \
&=(n-1)(I_(n-2)-I_n). \
==> I_n &= (n-1)/n I_(n-2), wide n>=2. $

于是 $ I_(2k)=(2k-1)!!/(2k)!! I_0=pi/2 dot (2k-1)!!/(2k)!!, \
I_(2k+1)=(2k)!!/(2k+1)!! I_1=(2k)!!/(2k+1)!!. $

*推论 (Wallis)* $quad$ 证明 $ limits(lim)_(n->infinity)((2n)!!/(2n-1)!!)^2 1/(2n+1)=pi/2. $

*证明* $quad$ 
$ &sin^(2n+1)x<sin^(2n)x<sin^(2n-1)x \
==>& (2n)!!/(2n+1)!!<pi/2 dot (2n-1)!!/(2n)!!<(2n-2)!!/(2n-1)!! \
==>& ((2n)!!/(2n-1)!!)^2 1/(2n+1)<pi/2<((2n)!!/(2n-1)!!)^2 1/(2n). $
不等式两端之差 $->0, n->infinity ==>$ 两端均收敛于 $pi/2.qed$

这个极限的另一个推论是 $I_n -> 0, I_n ~ n^(-1/2).$

== $section 5$ 积分中值定理

从几何图形面积的角度看, 一个直观的事实是

$ f in C[a,b] attach(==>,t: xi in [a,b]) integral_a^b f(x)dif x = f(xi)(b-a). $

*定理* $quad$ 设 $f in C[a,b], g in R[a,b]$ 且不变号, 则 $exists xi in [a,b],$
$ integral_a^b f(x)g(x)dif x =f(xi)integral_a^b g(x)dif x. $
$g eq.triple 1$ 的特殊情形对应最初的事实。

*证明* $quad$ 设 $m:=min f, M:=max f, m<=f(x)<=M.$ 下面不妨设 $g>=0,$ 则
$ m g(x)<=f(x)g(x)<=M g(x),\
m integral_a^b g(x)dif x<=integral_a^b f(x)g(x)dif x<=M integral_a^b g(x)dif x. $
当 $integral_a^b g(x)dif x=0$ 时 $integral_a^b f(x)g(x)dif x=0,$ 任取 $xi in [a,b]$ 均可；

当 $integral_a^b g(x)dif x>0$ 时
$ m<= (integral_a^b f(x)g(x)dif x)/(integral_a^b g(x)dif x)<=M. $
由连续函数的介值定理 $exists xi in [a,b], f(xi)=(integral_a^b f(x)g(x)dif x)/(integral_a^b g(x)dif x). qed$

*例* $quad$ 设 $f in C[0,1],$ 证明 $ lim_(n->infinity) integral_0^1 (n f(x))/(n^2 x^2 + 1)dif x=pi/2 f(0). $

*证明*
$ integral_0^1 (n f(0))/(n^2 x^2+1)dif x=f(0)integral_0^1 (dif n x)/(n^2 x^2+1)=f(0) dot arctan(n x)|_0^1=f(0)arctan n ->pi/2 f(0). $
于是要证
$ integral_0^1 (n(f(x)-f(0)))/(n^2 x^2+1)dif x=0. $
令 $g(x)=f(x)-f(0), g in C[0,1], g(0)=0.$

感性分析: 随着 $n->infinity, g(x)$ 靠近 1 的部分对积分的影响趋近于 0, 而靠近 0 的部分也因为连续性而趋近于零. 考虑将积分拆成两部分计算. 

$ integral_0^1 (n g(x))/(n^2x^2+1)dif x = integral_0^(n^(-1/3)) (n g(x))/(n^2x^2+1)dif x + integral_(n^(-1/3))^1 (n g(x))/(n^2x^2+1)dif x, $
其中
$ abs(integral_(n^(-1/3))^1 (n g(x))/(n^2x^2+1)dif x)<=M dot n/(n^2 n^(-2/3)+1) --> 0,\
integral_0^(n^(-1/3)) (n g(x))/(n^2x^2+1)dif x=g(xi)integral_0^(n^(-1/3)) n/(n^2x^2+1)dif x=g(xi_n)arctan(n^(2/3))<pi/2 dot n^(-1/3) --> 0. qed $

*定理 (带积分余项的 Taylor 公式)* $quad$ 设 $f$ 在 $U(x_0,h)$ 上有 $(n+1)$ 阶导数, 则 $forall x in U(x_0,h),$
$ f(x)=f(x_0)+f'(x_0)(x-x_0)+dots+1/n! f^((n))(x_0)(x-x_0)^n+R(x,x_0),\
R_n (x)=1/n! integral_(x_0)^x f^((n+1))(t)(x-t)^n dif t. $

*证明* $quad$ 对于 $n=0$ 的情形, 
$ f(x)=f(x_0)+integral_(x_0)^x f'(t)dif t=f(x_0)+integral_(x_0)^x f'(t)(x-t)^0dif t. $
对积分进行分部积分有
$ integral_(x_0)^x f'(t)(x-t)^0dif t &= 1/1! dot f'(t)(x-t)|_(x_0)^x - integral_(x_0)^x f^((2))(t)(x-t)dif t. $
对积分项递推进行分部积分即可. $qed$

Peano 余项仅要求 $R_n=o((x-x_0)^n).$ 而 Lagrange 余项是上述带积分余项 Taylor 公式应用第一中值定理的直接推论, 不过仅要求 $f^((n+1))(x)$ 存在而不必连续. 

另外令 $xi=x_0+theta(x-x_0),theta in [0,1].$ 改写上述积分余项得
$ R_n (x)&=1/n! integral_(x_0)^x f^((n+1))(t)(x-t)^n dif t \
&= 1/n! dot f^((n+1))[x_0+theta(x-x_0)](1-theta)^n (x-x_0)^(n+1). $
这就是*带 Cauchy 积分余项的泰勒公式*. 

*定理 (微积分第二中值定理)* $quad$ 设 $g in R[a,b].$

+ 若 $f$ 在 $[a,b]$ 上单调递增, 且 $f(x)>=0,$ 则 $exists xi_1 in [a,b], integral_a^b f(x)g(x)dif x=f(b)integral_(xi_1)^b g(x)dif x.$

+ 若 $f$ 在 $[a,b]$ 上单调递减, 且 $f(x)>=0,$ 则 $exists xi_2 in [a,b], integral_a^b f(x)g(x)dif x=f(a)integral_a^(xi_2)g(x)dif x.$

+ 若 $f$ 在 $[a,b]$ 上单调, 则 $exists xi in [a,b],$
 $ integral_a^b f(x)g(x)dif x = f(a) integral_a^xi g(x)dif x + f(b) integral_xi^b g(x)dif x. $

*证明*

(1) + (2) $==>$ (3): 不妨设 $f$ 单调递减, 则 $f(x)=underbracket((f(x)-f(b)),overline(f)(x)<=0)+f(b).$

对 $integral_a^b overline(f)dot g dif x$ 应用 (2) 有
$ integral_a^b f(x)g(x) dif x &= integral_a^b overline(f)(x)g(x)dif x+f(b)integral_a^b g(x)dif x \
&=(f(a)-f(b))integral_a^xi g(x)dif x + f(b)integral_a^b g(x)dif x \
&=f(a)integral_a^xi g(x)dif x+ f(b)integral_xi^b g(x)dif x. $

接下来证明 (1). (2) 的证明和 (1) 仅相差一个换元 $t = (a+b)-x.$

首先来证明一个条件加强后的命题 (1): 设 $f in C^1[a,b],g in C[a,b].$ 此时 $f'>=0.$ 

令 $G(x)=integral_x^b g(x)dif x.$ 有
$ integral_a^b f(x)g(x)dif x&=-f G |_a^b + integral_a^b f'(x)G(x)dif x \
&=f(a)G(a)+G(xi)integral_a^b f'(x)dif x. $

令 $m:=min G, M:=max G,$ 则
$ m f(b)<=f(a)G(a)+G(xi)(f(b)-f(a))<=M f(b). $

$f(b)=0$ 的情形下可任取 $xi in [a,b].$ $f(b)>0$ 时在 $g$ 上应用介值定理有
$ exists xi_1 in [a,b],G(xi_1)=(integral_a^b f(x)g(x)dif x)/f(b) ==> integral_a^b f(x)g(x)dif x=f(b)G(xi_1). $
至此证明了加强条件后命题. 

*引理 (Abel 变换)* $quad$ 设 ${a_i}_(i=1)^n, {b_i}_(i=1)^n$ 为两组实数, 则
$ sum_(i=1)^n a_i b_i = sum_(i=1)^(n-1) (a_i-a_(i-1))B_i + a_n B_n, wide B_k = sum_(i=1)^k b_i. $

从直观角度或者直接验证即可证明. $qed$