#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*例* $quad$ 讨论 $display(integral_2^(+infinity) ln(1+(sin x)/x^p)dif x)$ 的敛散性. 

*解* $quad ln(1+t)=display(t-t^2/2+o(t^2)), display(ln(1+(sin x)/x^p)=(sin x)/x^p-(sin^2 x)/(2 x^(2p))+o(1/x^(2p))) quad (x->+infinity).$ \ 于是 $ integral_2^(+infinity)ln(1+(sin x)/x^p)dif x=integral_2^(+infinity) ((sin x)/x^p-(cos 2x)/(4x^(2p))+(o(1)-1/4)1/x^(2p))dif x. $

其中 $display(integral_2^(+infinity) (sin x)/x^p dif x)$ 由 Dirichlet 定理收敛. 关于绝对收敛性: 

- $p>1$ 时 $display(abs((sin x)/x^p)<=1/x^p)$ 收敛, 

- $p<=1$ 时 $display(abs((sin x)/x^p)>= (sin^2 x)/x^p = (1-cos 2x)/(2x^p)=1/(2x^p)-(cos 2x)/(2x^p)),$ 
后一项收敛, 因此该项发散. 

对其他几项进行讨论即得

- $0<p<=display(1/2)$ 时 $I_1,I_2$ 条件收敛, $I_3$ 发散 $==>I$ 发散, 

- $display(1/2)<p<=1$ 时 $I_1$ 条件收敛, $I_2,I_3$ 绝对收敛 $==>I$ 条件收敛, 

- $p>1$ 时 $I_1,I_2,I_3$ 均绝对收敛 $==>I$ 绝对收敛. 

注意到 $display(ln(1+(sin x)/x^p) ~ (sin x)/x^p),$ 但两者敛散性不完全一致, 因此不能对可正可负的函数应用比较判别法. 

== $section 3$ 瑕积分

*定义* $quad$ 设 $f$ 在 $(a,b]$ 上有定义, 且 $forall delta>0,f$ 在 $[a+delta,b]$ 上 Riemann 可积. 若极限 $display(lim_(delta->0^+)integral_(a+delta)^b f(x)dif x)$ 存在, 则称积分 $display(integral_a^b f(x)dif x)$ 收敛, 且记 $ integral_a^b f(x)dif x=lim_(delta->0^+) integral_(a+delta)^b f(x)dif x. $

瑕积分和反常积分敛散性的判别标准是类似的. 

*定理 (Cauchy)* $ display(integral_a^b f(x)dif x) "收敛" <==> forall epsilon>0,exists delta>0 "s.t." forall x',x'' in (a,a+delta),display(abs(integral_(x_1)^(x_2)f(x)dif x)<epsilon). $

*定理* $quad display(integral_a^b abs(f(x))dif x) "收敛" ==>display(integral_a^b f(x)dif x)$ 收敛. 

绝对/条件收敛的定义, 非负函数的比较判别法, 以及 Dirichlet/Abel 判别法的表述都是类似的. 

*定义* $quad$ 设 $display(lim_(x->+infinity)integral_(-x)^x f(x)dif x)$ 存在, 则称其为 *Cauchy 主值积分*, 记为 $ "V.P." integral_(-infinity)^(+infinity)f(x)dif x. $

若 $f$ 有原函数 $F,$ 则瑕积分也可以写成 $F$ 的形式: $ integral_a^b f(x)dif x=lim_(x->b^-) F(x)-F(a)=F(b-0)-F(a). $

*例* $quad display(F(x)=x sin 1/x), x in (0,1].$ 则 $f(x)=F'(x)=display(sin 1/x-1/x cos 1/x), x in (0,1].$ \ 此时 $display(integral_0^1 f(x)dif x=F(1)-F(0+0)=sin 1.)$

*例* $quad$ 求 $display(integral_(-1)^1 (arccos x)/sqrt(1-x^2))dif x.$

*解* $quad display((arccos x)/sqrt(1-x^2))$ 在 $x=1$ 处是 $display(0/0)$ 型极限, $display(lim_(x->1^-) (arccos x)/sqrt(1-x^2)=lim_(x->1^-)(-1/sqrt(1-x^2))/(1/2 (2x)/sqrt(1-x^2))=1),$ 因而是正常积分. \ 而在 $x=-1$ 时确为瑕点. 计算本身并不复杂, $ I=-integral_(-1)^1 arccos x dif arccos x=lr(-1/2 (arccos x)^2|)_(-1)^1=pi^2/2. $

*例* $quad$ 讨论 $display(integral_0^1 1/x^p dif x)thick (p>0)$ 的敛散性. 

- $0<p<1$ 时 $I=display(lr(1/(1-p)x^(1-p)|)_0^1=1/(1-p)),$

- $p=1$ 时 $I=display(lr(ln x|,size:#150%)_0^1)=+infinity,$

- $p>1$ 时 $I=display(lr(1/(1-p)x^(1-p)|)_0^1=+infinity.)$

*例* $quad$ 讨论 $display(integral_0^1 (sin 1/x)/x^p dif x)$ 的敛散性. 

*解* $ integral_0^1 (sin 1/x)/x^p dif x=integral_(+infinity)^1 (sin t)/t^(-p) (-1/t^2)dif t=integral_1^(+infinity) (sin t)/(t^(2-p)) dif t. $ 于是 $p<1$ 时绝对收敛, $1<=p<2$ 时条件收敛. 

*定理 (Riemann-Lebesgue)* 设 $f$ 在 $[a,b]$ 上可积（或 $f$ 有瑕点时要求 $abs(f)$ 可积）, 则 $ lim_(n->+infinity) integral_a^b f(x)sin n x dif x=0. $

*证明* $quad$ 先讨论 $f in C^1[a,b]$ 的情形. $ integral_a^b f(x)sin n x dif x=lr(-1/n f(x) cos n x |)_a^b - 1/n integral_a^b f'(x) cos n x dif x, $ 其中 $f'(x)$ 和 $cos n x$ 均有界, 故 $n->+infinity$ 时积分项 $->0.$

对于一般情形, 总能用连续可微函数 $g$ 近似 $f$ 并使得误差 $<epsilon.$ $ abs(integral_a^b f(x)sin n x dif x)&<=abs(integral_a^b g(x)sin n x dif x)+abs(integral_a^b (f(x)-g(x))sin n x dif x) <=2 epsilon. $