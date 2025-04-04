#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

我们已经给出了 $display(integral_a^(+infinity)f(x)dif x)$ 和 $display(integral_(-infinity)^a f(x)dif x)$ 的定义。

类似地可以定义 $display(integral_(-infinity)^(+infinity)=integral_(-infinity)^a+integral_a^(+infinity)).$ 若两个反常积分均收敛则称 $display(integral_(-infinity)^(+infinity))$ 收敛。

对于有原函数的 $f(x),$ 反常积分还有其他的表达方式。设 $f$ 在 $[a,+infinity)$ 上有原函数 $F,$ 则有 $ integral_a^x f(x)dif x=F(x)-F(a). $ 因而 $ integral_a^(+infinity)f(x)dif x=lim_(x->infinity)integral_a^x f(t)dif t=F(+infinity)-F(a). $

*例* $quad$ 求 $display(integral_1^infinity 1/x^p dif x.)$

*解*
- $p=1$ 时 $display(integral_1^(+infinity) 1/x dif x=ln(+infinity)-ln(1))$ 发散。

- $p!=1$ 时 $display(integral_1^(+infinity) 1/x^p dif x=lr(1/(1-p)x^(1-p)|, size: #100%)_1^(+infinity) ==> cases(1/(1-p) "if" p>1, +infinity "otherwise")).$

在反常积分中还原法和分部积分同样可用。

- 换元法： $ integral_a^(+infinity)f(x)dif x=integral_alpha^beta f(phi(t))phi'(t)dif t quad (phi in C^1[alpha,beta),phi'>=0) $ 其中 $phi(alpha)=a,phi(beta-0)=+infinity.$ 注意等式右边可能是正常积分，也可能是瑕积分。

- 分部积分：对于 $u,v in C^1, limits(lim)_(x->+infinity)u(x)v(x)$ 存在，则 $ integral_a^(+infinity)u(x)v'(x)dif x=lr(u(x)v(x)|,size:#150%)_a^(+infinity)-integral_a^(+infinity)u'(x)v(x)dif x. $

*例* $quad display(integral_1^(+infinity)(cos x)/x dif x=lr((sin x)/x|)_1^(+infinity)-integral_1^(+infinity)-(sin x)/x^2 dif x.)$  由上一例知该反常积分收敛。

*例* $quad$ 计算 $I=display(integral_0^(+infinity) e^(-a x)sin b x dif x),thick display(J=integral_0^(+infinity)e^(-a x)cos b x dif x)thick (a>0).$ 假定 $I,J$ 确实收敛。

*解* $ I=lr(-e^(-a x)/a sin b x|)_0^(+infinity) -1/a integral_0^(+infinity)b e^(-a x) cos b x dif x=b/a J, \ J=lr(-e^(-a x)/a cos b x |)_0^(+infinity)+1/a integral_0^(+infinity)b e^(-a x)sin b x dif x=1/a+b/a I. $ 联立即可解出 $I,J.$

== $section 2$ 无穷积分敛散性的判别法

$f:[a,+infinity)->RR. thick forall x>=a,f$ 在 $[a,x]$ 上可积，且有原函数 $F(x)=display(integral_a^x f(t)dif t),$ \ $display(integral_a^(+infinity)f(x)dif x=F(+infinity)-F(a)).$

*定理* $quad$ 反常积分收敛 $<==> forall epsilon>0, exists M>a,forall x_1,x_2>M, display(abs(integral_(x_1)^(x_2) f(x)dif x)<epsilon).$ (Cauchy 准则)

*定理* $quad display(integral_a^(+infinity) abs(f)dif x)$ 收敛 $==>display(integral_a^(+infinity)f(x)dif x)$ 收敛。由上一定理即证。

*定义* $quad$ 若 $f$ 满足 $display(integral_a^(+infinity)abs(f(x))dif x)$ 收敛，则称 $f$ *绝对收敛*。\ 若 $display(integral_a^(+infinity) abs(f(x))dif x)$ 发散但 $display(integral_a^(+infinity) f(x)dif x)$ 收敛，则称 $f$ *条件收敛*。

下面先讨论 $f(x)>=0$ 的情形，此时 $F(x)$ 关于 $x$ 单调增。

*定理* $quad$ 设 $f>=0,$ 则 $display(integral_a^(+infinity)f(x)dif x)$ 收敛 $<==>F(x)$ 在 $[a,+infinity)$ 有界。证明显然。

*定理 (比较判别法)* $quad$ 设 $exists c>=0 "s.t." 0<=f(x)<=c dot g(x), forall x>=a.$ 则 

- 若 $display(integral_a^(+infinity)g(x)dif x)$ 收敛，则 $display(integral_a^(+infinity)f(x)dif x)$ 也收敛。

- 若 $display(integral_a^(+infinity)f(x)dif x)$ 发散，则 $display(integral_a^(+infinity)g(x)dif x)$ 也发散。

*证明*
- $display(integral_a^(+infinity)g(x)dif x)$ 收敛 $==>exists M,display(integral_a^(+infinity)g(x)dif x<M.)$ 则 $display(integral_a^(+infinity)f(x)dif x)<c M.$

- 发散的情形同理。 #h(1fr) $square.stroked$

*定理 (比较判别法的极限形式)* $quad$ 设 $f>=0,g>0,display(lim_(x->+infinity)f(x)/g(x)=c in [0,+infinity]).$

- $0<c<+infinity$ 时 $f,g$ 的反常积分同时敛散。

- $0<=c<+infinity$ 时若 $display(integral_a^(+infinity)g(x)dif x)$ 收敛，则 $display(integral_a^(+infinity)f(x)dif x)$ 也收敛。

- $0<c<=+infinity$ 时若 $display(integral_a^(+infinity)f(x)dif x)$ 收敛，则 $display(integral_a^(+infinity)g(x)dif x)$ 也收敛。

利用比较判别法我们可以判定 $f$ 是否绝对收敛。若 $f$ 不绝对收敛，我们可以采取以下的判别法来判断 $f$ 是否为条件收敛。

*定理 (Dirichlet)* $quad$ 设 $f,g:[a,+infinity)->RR$ 有定义。若

- $exists M>0 "s.t." forall x, display(abs(integral_a^x g(t)dif t)<M),$

- $f(x)$ 单调趋于 $0,$

则 $display(integral_a^(+infinity)f(x)g(x)dif x)$ 收敛。注意这里不要求 $g$ 的正负性。

*证明* $quad$ $ abs(integral_(x_1)^(x_2) f(x)g(x)dif x)&<=abs(f(x_1) integral_(x_1)^xi g(x)dif x)+abs(f(x_2) integral_xi^(x_2)g(x)dif x) \ &<= 2M(abs(f(x_1))+abs(f(x_2))) -> 0. $ #h(1fr) $square.stroked$

*定理 (Abel)* $quad$ 设 $f,g$ 满足

- $display(integral g(x) dif x)$ 收敛，

- $f(x)$ 单调有界，

则 $display(integral_a^(+infinity)f(x)g(x)dif x)$ 收敛。

*证明* $quad$ 令 $f(+infinity)=c.$ $ integral f g dif x=integral (f-c)g dif x+c dot integral g dif x. $ 前一项由 Dirichlet 定理收敛. #h(1fr) $square.stroked$