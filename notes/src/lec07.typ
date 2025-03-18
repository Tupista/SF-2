#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

在上一次课上我们证明了条件加强的第二中值定理. 接下来我们利用 Abel 变化和 Riemann 和的手段来证明原命题. 

*定理* $quad$ 设 $g in R[a,b], f$ 在 $[a,b]$ 上单调递增, $f(a)>=0,$ 则 $exists xi in [a,b] "s.t." $
$ integral_a^b (f dot g)(x)dif x=f(b)integral_xi^b g(x)dif x. $

*证明* $quad$ 取一列分割 $Delta:a=x_0<dots<x_n=b, lambda(Delta)->0.$ 则 
$ integral_a^b (f dot g)(x)dif x=limits(lim)_(lambda(Delta)->0) sum_(k=1)^n (f dot g)(x_k)Delta x_k. $
我们断言: 上式 $=limits(lim)_(lambda(Delta)->0) limits(sum)_(k=1)^n f(x_k) integral_(x_(k-1))^(x_k)g(x)dif x.$

两者作差可得
$ &sum_(k=1)^n f(x_k) (g(x_k)Delta x_k - integral_(x_(k-1))^(x_k)g(x)dif x) \
<=& sum_(k=1)^n f(x_k) w_k (g) Delta x_k ->0, lambda(Delta)->0, $
其中 $f$ 有界且 $g in R[a,b].$

于是令 $G(x):=integral_x^b g(x)dif x, integral_(x_(k-1))^(x_k) g(x)dif x=G(x_(k-1))-G(x_k).$ 由 Abel 变换知上式
$ &= sum_(k=1)^n f(x_k)(G(x_(k-1))-G(x_k)) \
&=  sum_(k=1)^n f(x_k)G(x_(k-1)) - sum_(k=1)^n f(x_k)G(x_k) \
&= f(x_1)G(a) + sum_(k=1)^(n-1) (f(x_(k+1))-f(x_k))G(x_k) wide (G(x_n)=integral_b^b g(x)dif x=0) \
&in [m f(b), M f(b)]. $
其中 $m:=min G, M:=max G.$

令 $lambda(Delta)->0,$ 可得 $m f(b)<=integral_a^b (f dot g)(x)dif x<=M f(b).$

$f(b)=0$ 时可任选 $xi in [a,b].$ $f(b)>0$ 时 $exists xi in [a,b],$
$ G(xi)=(integral_a^b (f dot g)(x)dif x)/(f(b)). $ #h(1fr) $square.stroked$

*例* $quad$ 设 $f$ 在 $[a,b]$ 上单调递增, 则
$ integral_a^b x f(x)dif x >= (a+b)/2 integral_a^b f(x)dif x. $

*证明* $quad$
$ integral_a^b (x-(a+b)/2)f(x)dif x &= f(a) integral_a^xi (x-(a+b)/2)dif x + f(b)integral_xi^b (x-(a+b)/2)dif x \
&= (f(b)-f(a))integral_xi^b (x-(a+b)/2)dif x >=0. & square.stroked $

*例* $quad$ 求 $limits(lim)_(x->0) (integral_0^x sin 1/t dif t)/x.$

*解* $quad$ 如果直接适用洛必达法则会得到 $(sin 1/x)/1,$ 该极限不存在, 但这无法说明原极限是否存在. 

对于 $forall delta>0,$
$ integral_0^x sin 1/t dif t = integral_0^delta sin 1/t dif t + integral_delta^x sin 1/t dif t. $
其中前一积分是一常数, 且随着 $delta->0$ 而 $->0.$

于是可以认为
$ integral_0^x sin 1/t dif t = lim_(delta->0) integral_delta^x sin 1/t dif t. $
而具体计算给出
$ integral_delta^x sin 1/t dif t &= integral_(delta^(-1))^(x^(-1)) sin t (-1/t^2) dif t \
&= integral_(x^(-1))^(delta^(-1))(sin t)/(t^2)dif t \
&= x^2 integral_(x^(-1))^xi sin t dif t \
&= x^2 (cos 1/x - cos xi). $
于是 
$ abs(integral_delta^x sin 1/t dif t)<=2 x^2 quad ==> quad abs((integral_delta^x sin 1/t dif t)/x)<=2x ->0. $ #h(1fr) $square.stroked$

== $section 6$ 定积分的几何应用

+ 直角坐标系

 首先给出如下假设: 
 + $f in R[a,b]$ 时, 由 $f$ 确定的平面图形面积定义为 $integral_a^b f(x)dif x.$
 + 采用小正方形覆盖的方式合理定义面积. 

 X 型区域: 由 $y=f(x), y=g(x)$ 所围成的图形. 具体来说, 
 $ X:D={(x,y) | a<=x<=b, f(x)<=y<=g(x)}. $
 此时 
 $ S(D)=integral_a^b (g(x)-f(x))dif x = integral_a^b g(x)dif x - integral_a^b f(x)dif x. $
 Y 型区域的定义和面积计算方式都是类似的. 

 *例 (Young 不等式)* $quad$ 设 $f$ 在 $[a,b]$ 上严格单调递增, $f(0)=0,$ 则 $forall a,b>0,$ 有 
 $ a b <= integral_0^a f(x)dif x+integral_0^b f^(-1)(x)dif x, $
 且等号成立 $<==> f(a)=b.$

 *证明* $quad$ 利用几何直观即可说明. #h(1fr) $square.stroked$

 *特例* $quad$ $f(x)=x^alpha, f^(-1)(y)=y^(1/alpha) quad ==> forall a,b>0, a b<=a^(alpha+1) / (alpha+1) + b^(1/alpha + 1)/(1/alpha + 1) = (a^p)/p + (b^q)/q,$

 其中 $p=1+alpha, q=1/alpha + 1, 1/p + 1/q=1 quad ==> a b <= a^p/p + b^q/q.$

+ 参数方程

 设 $gamma$ 由参数方程 $cases(x=x(t),y=y(t)), alpha<=t<=beta$ 决定, $x(t),y(t) in R[alpha,beta],$ 且为封闭曲线 (姑且按照直观理解, 首尾相连且除此以外没有交点).  Jordan 曲线定理告诉我们, 简单闭曲线将平面分成两个区域, 这里要求 $x(t),y(t) in C^1[alpha,beta].$

 下面来计算 Jordan 曲线所围成的区域 $D$ 的面积. 我们规定当 $t$ 增加时若 $D$ 始终在左手边, 则称其为*正向*, 否则称之为*反向*. 设 $gamma(t)=(x(t),y(t))$ 为正向的 Jordan 曲线, 围成和 $cases(y=f(x),y=g(x))$ 相同的 X 型区域. 

 此时
 $ S(D)=integral_a^b (f(x)-g(x))dif x. $
 假设 $x(t)$ 在 $[alpha,tau]$ 上单调递减并且在 $[tau,beta]$ 上单调递增, 则这两段曲线分别对应 $f$ 和 $g.$ 于是有
 $ S(D) &= integral_alpha^tau y(t(x))dif x(t) - integral_tau^beta y(t(x))dif x(t) \
 &= integral_alpha^tau y(t)x'(t)dif t - integral_tau^beta y(t)x'(t)dif t = -integral_alpha^beta y(t)x'(t)dif t. $

 对于 Y 型区域则有
 $ S(D)=integral_alpha^beta x(t)y'(t)dif t. $

 *例* $quad$ 求椭圆盘 $x^2/a^2 + y^2/b^2<=1$ 的面积.  

 *解* $quad$
 $ S(D)=-integral_0^(2pi) b sin t (-a sin t)dif t = a b integral_0^(2pi) sin^2 t dif t = pi a b. $