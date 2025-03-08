#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

== $section 4$ 原函数与定积分的计算

已知 $f in C[a,b] ==> exists Phi(x)=integral_a^x f(t)dif t, Psi(x)=integral_x^b f(t)dif t, forall x in [a,b].$ 但是有些函数的原函数存在.按照黎曼积分的定义却不可积: 

*例* $quad$ 
$ F(x)=cases(
	x^2 sin 1/x^2 "," quad &x != 0,
	0 "," quad &x=0
)thin , quad f(x)=F'(x)=cases(
	2x sin 1/x^2 - 2/x cos 1/x^2 "," quad &x != 0,
	0 "," &x=0
)thin . $

$f$ 在 $x=0$ 附近无界.按照黎曼积分的定义不存在定积分.但是确实存在相应的原函数. 

另外 $Phi, Psi$ 满足 $Phi'(x)=f(x), Psi'(x)=-f(x).$ 对于变上限积分是关于 $f$ 的函数的情形, 应用复合函数求导公式即得
$ (Phi(f(x)))' = Phi'(f(x)) dot f'(x). $
变上下限积分也总能写成 $Phi$ 或 $Psi$ 做差的结果. 

*例* $quad$ $(integral_x^(x^2)e^t^2 dif t)'=(integral_0^x^2 e^t^2 dif t-integral_0^x e^t^2 dif t)'=2x e^x^2-e^x^2.$

=== 2. 定积分的计算

不定积分中的换元法和分部积分法依然有效, 其表述也是类似的. 

*定理（换元法）* $quad$ 设 $f in C[a,b], phi$ 在 $[alpha,beta]$ 上有连续导数且 $phi(alpha)=a,phi(beta)=b,phi([alpha,beta]) subset [a,b],$ 则
$ integral_a^b f(x)dif x=integral_alpha^beta f(phi(t))phi'(t)dif t. $
式子中向左推导为第一换元法, 向右推导即为第二换元法. 

*证明* $quad$ 令 $Phi(x)=integral_a^x f(x)dif x, (Phi(phi(t)))'=Phi'(phi(t))phi'(t)=f(phi(t))phi'(t).$ \
于是 LHS $=Phi(b)-Phi(a)=Phi(phi(beta))-Phi(phi(alpha))=$ RHS. $qed$

*推论*
+ $f$ 是偶函数 $==> integral_(-a)^a f(x)dif x = 2 integral_0^a f(x)dif x.$

 $because integral_(-a)^a f(x)dif x=integral_(-a)^0 f(x)dif x+ integral_0^a f(x)dif x=integral_a^0 f(t)(-dif t)+integral_0^a f(x)dif x=2integral_0^a f(x)dif x.$

+ $f$ 是奇函数 $==> integral_(-a)^a f(x)dif x=0.$
 
 $because integral_(-a)^a f(x)dif x=integral_(-a)^0 f(x)dif x + integral_0^a f(x)dif x=integral_a^0 f(-t)(-dif t) + integral_0^a f(x)dif x=0.$

*例* $quad$ 求 $ integral_(-a)^a sqrt(a^2-x^2)dif x. $

*解* $quad$ 
$ integral_(-a)^a sqrt(a^2-x^2)dif x&=integral_(-pi/2)^(pi/2) a^2 cos^2 t dif t \
&=2a^2 integral_0^(pi/2)cos^2 t dif t \
&=2a^2 integral_(pi/2)^0 sin^2 t (-dif t) \
&=2a^2 integral_0^(pi/2)sin^2 t dif t \
&=1/2 dot 2a^2 integral_0^(pi/2)dif t \
&= (pi a^2)/2. $

*定义* $quad$ 若 $f in C(-infinity,infinity), exists T>0, forall a, f(a+T)=f(a),$ 则称 $f$ 为*周期函数*, 并称 $T$ 为 $f$ 的一个*周期*. 

*命题* $quad$ 沿用定义中的符号.有
$ integral_a^(a+T)f(x)dif x=integral_0^T f(x)dif x. $

*证明* $quad$ 
$ integral_a^(a+T)f(x)dif x=integral_a^T f(x)dif x+ integral_T^(a+T)f(x)dif x=integral_a^T f(x)dif x+ integral_0^a f(x)dif x=integral_0^T f(x)dif x.qed $

*例* $quad$ 求 $ I=integral_0^pi (x sin x)/(1+cos^2 x)dif x. $

*解* 
$ I&=integral_0^pi (x sin x)/(1+cos^2 x)dif x \
&=integral_pi^0 ((pi-x)sin x)/(1+cos^2 x)(-dif x) \
&= pi/2 dot integral_0^pi (sin x)/(1+cos^2 x)dif x \
&= -pi/2 dot arctan(cos x) bar_0^pi \
&=pi^2/4. $

*定理（分部积分法）* $quad$ 设 $u,v$ 在 $[a,b]$ 可导.$u', v' in R[a,b],$ 则
$ integral_a^b (u'v)(x)dif x=(u v)|_a^b - integral_a^b (u v')(x)dif x. $

*证明* $quad$ 利用 $(u v)'=u'v + u v'$ 和牛顿-莱布尼茨公式即证. $qed$