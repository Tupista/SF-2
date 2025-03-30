#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

=== 5. 已知截面面积的立体体积

已知过 $x=x_0$ 的平面截立体的截面面积为 $A(x),$ 记立体 $Omega$ 在 $x in [a,x]$ 部分的体积为 $V(x).$

此时近似有 $ V(x+Delta x)-V(x)=A(x) Delta x, \ ==> V'(x)=A(x), quad V=V(b)-V(a)=integral_a^b A(x)dif x. $

祖暅原理是这个公式的直接推论：$A(x)$ 相同的立体体积均相等. 

=== 6. 旋转体的体积

将曲边梯形 $S:x in [a,b], 0<=y<=f(x)$ 绕 $x$ 周旋转一周得到的立体称为旋转体 $Omega.$ 根据上一节的结论有 $ A(x)=pi f^2(x), quad V=pi integral_a^b f^2(x)dif x. $

*例* $quad$ 求椭球体 $display(x^2/a^2+y^2/b^2+z^2/c^2=1)$ 的体积. 

*解* $quad$ 可以将上述椭球体看成曲边梯形 $ y^2/b^2+z^2/c^2<=1-x^2/a^2 $ 所对应的旋转体, 相应地其截面积和体积为 $ A(x)=pi b c (1-x^2/a^2), \ V=integral_(-a)^a A(x)dif x=pi b c integral_(-a)^a (1-x^2/a^2)dif x=pi b c lr((x-x^3/(3a^2))|)_(-a)^a=4/3 pi a b c. $

=== 7. 曲线弧长

给定参数方程决定的曲线 $display(cases(x=x(t),y=y(t))), alpha<=t<=beta, x(t),y(t) in C[alpha,beta].$ 利用分割 $Delta$ 近似曲线弧长为 $ ell(Delta)=sum_(i=1)^n abs(overline(M_(i-1)M_i)), quad M_i=(x(t_i),y(t_i)). $ 若 $limits(sup)_Delta ell(Delta)<infinity,$ 则称曲线 $gamma$ 是可求长的. 不可求长曲线的例子包括 $ y=x sin 1/x, x in [0,1]; quad "Koch 雪花曲线". $

记 $L(t)$ 为曲线在 $[alpha,t]$ 之间的长度, 则 $ L(t+Delta t)-L(t)&=abs(overline(M_(t+Delta t)M_t))=sqrt((x(t+Delta t)-x(t))^2+(y(t+Delta t)-y(t))^2)\ &approx sqrt((x'(t)Delta t)^2 + (y'(t)Delta t)^2)\ &=sqrt(x'(t)^2+y'(t)^2) Delta t quad ("默认" Delta t>0, "注意积分上下限带来的正负号问题")\ &==> L'(t)=sqrt(x'(t)^2+y'(t)^2), L(t)=integral_a^t L'(t)dif t. $

对于以 $y=f(x)$ 形式给出的曲线, 可以取参数方程 $display(cases(x=t, y=f(t))),$ 其弧长公式即为 $ L(t)=integral_a^b sqrt(1+(y')^2)dif x. $

类似地, 对于极坐标系曲线 $r=r(theta),$ 取参数方程 $display(cases(x=r(theta)cos theta, y=r(theta)sin theta))$ 即得 $ cases(x'(theta)=r'(theta)cos theta-r(theta)sin theta, y'(theta)=r'(theta)sin theta+r(theta)cos theta,) \ x'(theta)^2+y'(theta)^2=r'(theta)^2+r(theta)^2, \ ==>L=integral_alpha^beta sqrt(r'(theta)^2+r(theta)^2)dif theta. $

=== 8. 旋转体的侧面积

采取微元法分析一小段 $Delta x$ 对应的侧面积： $ Delta S(x)=2 pi f(x)Delta s=2 pi f(x) sqrt(1+(f')^2)Delta x, \ ==> S=integral_a^b 2pi f sqrt(1+(f')^2) dif x, $ 相应的参数方程版本即为 $ S=integral_a^b 2pi y sqrt((x')^2+(y')^2)dif t. $

*例* $quad$ 求球面 $x^2+y^2+z^2=r^2$ 的表面积. 

*解* $quad$ 相应的曲边梯形为 $ cases(x=r cos theta, y=r sin theta), quad theta in [0,pi]. $ 于是表面积为 $ S=integral_0^pi 2pi y sqrt((x')^2+(y')^2)dif theta=integral_0^pi 2 pi r^2 sin theta dif theta=4pi r^2. $

= 第八章 广义积分

在应用的定积分的换元法时, 经常会出现积分上下限异常的情形, 例如 $ integral_0^1 sin 1/t dif t attach(=,t:u=1/t) integral_1^(+infinity) (sin u)/u^2 dif u. $ 这不是我们已经定义的闭区间上的定积分, 因此我们需要拓展我们的定义来研究这类积分. 

*定义* $quad$ 设 $f$ 在 $[a,+infinity)$ 上有定义且 $forall x>a, f in R[a,x].$ 

若 $display(lim_(x->+infinity)integral_a^x f(x)dif x)$ 存在, 则称 $f$ 在 $[a,+infinity)$ 上的广义积分收敛, 记 $ integral_a^(+infinity)f(x)dif x=lim_(x->+infinity)integral_a^x f(x)dif x, $ 否则称 $display(integral_a^(+infinity) f(x)dif x)$ 发散. 