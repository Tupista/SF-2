#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*例* $quad$ 求 $display(sum_(n=1)^oo 1/n dot 1/(2n+1)).$

*解* $quad$ 令 $f(x)=display(sum_(n=1)^oo 1/(n (2n+1))x^(2n+1)),x in [-1,1],$ 归结为求 $f(1).$ 有 $f'(x)=display(sum_(n=1)^oo 1/n x^(2n)),$ \ $f''(x)=2 display(sum_(n=1)^oo x^(2n-1)=(2x)/(1-x^2)).$ 积分可得 $f'(x)=display(integral_0^x f''(x)dif x=-ln(1-x^2)),$ \ $f(x)=(1-x)ln(1-x)+2x-(1+x)ln(1+x).$ 于是所求为 $f(1-0)=2-2ln 2.$

另外也可做裂项 $display(1/n dot 1/(2n+1)=1/2(1/(2n)-1/(2n+1))).$

== $section 3$ 初等函数的幂级数展式

设 $f(x)$ 在 $x_0$ 的某个邻域内有定义, 且 $exists delta>0, "s.t."$ 在 $(x_0-delta,x_0+delta)$ 内有 $ f(x)=sum_(n=0)^oo a_n (x-x_0)^n $ 则称 $f$ 可在 $x_0$ 处展成幂级数. 若 $f$ 在区间 $I$ 的每个点都可以展成幂级数, 则称 $f$ 在 $I$ 上*实解析*. 

若 $f$ 在 $x_0$ 处可展成幂级数, 则 $f$ 在 $x_0$ 的某个邻域内无穷次可导, 反之不是. 对于 $f(x)=display(sum_(n=0)^oo a_n (x-x_0)^n)$ 逐项求导有 $ f^((k))(x)=a_n n dots (n-k+1)(x-x_0)^(n-k), $ 令 $x=x_0$ 即有 $f^((k))(x_0)=k! a_k.$

*定理* $quad$ 若 $f(x)$ 在 $x_0$ 处可展成幂级数 $f(x)=display(sum_(n=0)^oo a_n (x-x_0)^n),$ 则 $a_n=display(1/(n!)) f^((n))(x).$ #h(1fr) $square.stroked$

*例* $quad f(x)=display(cases(e^(-1/x^2) "," quad &x!=0, 0 "," &x=0)), thick f^((n))(0)=0, forall n>=0.$ 若 $f(x)$ 在 $0$ 处能展成幂级数, 则 \ $f(x)=display(sum_(n=0)^oo 1/n! f^((n))(0)x^n=0),$ 矛盾. 

设 $f(x)$ 在 $x_0$ 的某个邻域内无穷次可导, 称 $ sum_(n=0)^oo 1/n! f^((n))(x_0)(x-x_0)^n $ 为 $f$ 在 $x_0$ 处的 Taylor 级数, 在 $x_0=0$ 时称为 Maclarin 级数. 

回忆 Taylor 公式 $ f(x)=sum_(n=0)^n f^((k))(x_0)(x-x_0)^k+R_n (x,x_0) $ $f$ 在 $x_0$ 处可展成幂级数当且仅当 $exists delta>0 "s.t."$ 在 $x in (x_0-delta,x_0+delta)$ 时 $R_n (x,x_0)->0.$

*例*

- $f(x)=e^x,f^((n))(x)=e^x.$ $R_n (x)=display((f^((n+1))(xi))/((n+1)!)x^(n+1)=e^xi / (n+1)! x^(n+1)), xi in [0,x].$ \ $forall x in RR, abs(R_n (x))<=display(e^(abs(x))/(n+1)! abs(x)^n)->0.$ 于是 $e^x=display(sum_(n=0)^oo 1/n! x^n), x in (-oo,+oo).$

- $ln(1+x)=display(sum_(n=1)^oo (-1)^(n-1)/n x^n), x in (-1,1].$

- $f(x)=sin x, abs(f^((n))(x))<=1. R_n (x)=display(abs(f^((n+1))(xi))/(n+1)! abs(x)^(n+1)<=abs(x)^(n+1)/(n+1)!)->0.$ 

 于是 $sin x=display(sum_(n=0)^oo (-1)^n/(2n+1)! x^(2n+1)), cos x=display(sum_(n=0)^oo (-1)^n/(2n)! x^(2n)), forall x in (-oo,+oo).$

- $f(x)=(1+x)^alpha.$ 其 Taylor 级数的收敛半径为 1, 故只讨论 $abs(x)<1$ 的情形. 
  - $alpha=0, (1+x)^alpha=1.$
  - $alpha=n in NN, (1+x)^n=display(sum_(n=0)^oo binom(n,k)x^k.)$
  - $alpha in RR, R_n (x)=display(1/n! integral_0^x (x-t)^n f^((n+1))(t)dif t),$ \  其中 $((1+x)^alpha)^((n+1))=alpha (alpha-1)dots(alpha-n)(1+x)^(alpha-n-1).$ \ $ abs(R_n (x))&<=display(abs(alpha dots (alpha-n))/n! abs(integral_0^x (x-t)^n (1+t)^(alpha-n-1)dif t)) \ &=abs(alpha dots (alpha-n))/n! abs(integral_0^x ((x-t)/(1+t))^n (1+t)^(alpha-1) dif t) \ &= abs(alpha dots (alpha-n))/n! abs(x)^n abs(integral_0^x ((1-t/x)/(1+t))^n (1+t)^(alpha-1) dif t) \ &<= abs(alpha dots (alpha-n))/n! abs(x)^n abs(integral_0^x (1+t)^(alpha-1) dif t) quad quad ((1-t/x)/(1+t)<1) \ &<= abs((alpha-1) dots (alpha-n))/n! abs(x)^n (1+x)^alpha->0. $

  于是 $(1+x)^alpha = display(sum_(n=0)^oo (alpha dots (alpha-n+1))/n! x^n), x in (-1,1).$ 
    - $alpha>0,n display((abs(a_n)/abs(a_(n+1))-1)=n/(n-alpha)(1+alpha)->1+alpha>1),sum abs(a_n)$ 收敛, 故此时收敛域为 $[-1,1].$ 

    - $alpha<=-1, display(abs(a_n)/abs(a_(n+1))=(n+1)/(n-alpha))<=1, limits(lim)_(n->oo) a_n!=0,$  收敛域为 $(-1,1).$

    - $-1<alpha<0,$ 在 $x=-1$ 不收敛. $display(abs(a_n)/abs(a_(n+1))=(n+1)/(n-alpha)>1).$ $ abs(alpha dots (alpha-n+1))/(n!)&=abs((n-(alpha+1))/n) abs((n-1-(alpha+1))/(n-1))dots abs(alpha/1) \ &= abs(1-(alpha+1)/n)abs(1-(alpha+1)/(n-1))dots abs(1-(alpha+1)/1) \ &=exp(sum_(k=1)^n ln (1-(alpha+1)/k))->0 quad (n->oo) $ 从而 $x=1$ 处收敛. 

    记 $display(binom(alpha,n):= (alpha (alpha-1)dots(alpha-n+1))/n!),$ 约定 $display(binom(alpha,0))=1.$ 则 $(1+x)^alpha=display(sum_(n=0)^oo binom(alpha,n)x^n), x in (-1,1).$

    综上所述, 
    - $alpha>=0,$ 收敛域为 $[-1,1],$
    - $alpha<=-1,$ 收敛域为 $(-1,1),$
    - $-1<alpha<1,$ 收敛域为 $(-1,1].$

    对于 $alpha=1/2,$ $ binom(alpha,n)&=(1/2 dot (-1/2)dot (3/2-n))/(n!)=((-1)^(n-1)(2n-3)!!)/(2n)!! \ &= (-1)^(n-1) (2n-3)!!/(2n-2)!! dot 1/(2n) ~ n^(-3/2). $

    对于 $alpha=-1/2,$ $ binom(alpha,n)=((-1)^n (2n-1)!!)/(2n)!!, x in (-1,1]. $

回忆若 $S(x)=display(sum_(n=0)^oo a_n x^n), x in (-R,R)$ 在 $x=R$ 收敛, 则 $display(lim_(x->R^-) S(x))$ 存在. 其逆命题则一般不真, 即 $display(lim_(x->R^-)S(x))$ 存在不能推出 $x=R$ 处收敛, 反例有 $display(1/(1+x)) thick (R=1).$

\*Tauber 定理: 若 $display(lim_(n->oo) n a_n=0)$ 且 $S(R-0)$ 存在, 则 $sum a_n R^n$ 收敛. 

$ 1/(1+x^2)&=1-x^2+x^4-dots, quad x in (-1,1) \ arctan x&=x-1/3 x^3+1/5  x^5-dots, x in [-1,1]. \ &=> pi/4=1-1/3+1/5-dots $

$ (arcsin x)'&=(1-x^2)^(-1/2)=sum_(n=0)^oo (2n-1)!!/(2n)!! x^(2n) \ &=> arcsin x=sum_(n=0)^oo (2n-1)!!/(2n)!! 1/(2n+1)x^(2n+1), quad x in [-1,1]. \ &=>pi/2=sum_(n=0)^oo (2n-1)!!/(2n)!! 1/(2n+1). $

以上均为 Maclaurin 级数. 若要处理 $x_0!=0$ 的情形, 可以转化到 Maclarin 级数来解决.  $ sin x&= sin ((x-x_0)+x_0)=sin (x-x_0)cos x_0 + cos (x-x_0)sin x_0 \ &=cos x_0 sum_(n=0)^oo (-1)^n/(2n+1)! (x-x_0)^(2n+1)+sin x_0 sum_(n=0)^oo (-1)^n /(2n)!!(x-x_0)^(2n). $