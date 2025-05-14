#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*初等幂级数展式*

- $e^x=display(sum_(n=0)^oo 1/n! x^n), quad x in (-oo,+oo),$

- $sin x=display(sum_(n=0)^oo (-1)^n/(2n+1)! x^(2n+1)), quad x in (-oo,+oo),$

- $cos x=display(sum_(n=0)^oo (-1)^n/(2n)! x^(2n)), quad x in (-oo,+oo),$

- $ln(1+x)=display(sum_(n=1)^oo (-1)^n/n x^n), x in (-1,1],$

- $(1+x)^alpha=display(sum_(n=0)^oo binom(alpha,n) x^n), quad display(binom(alpha,n)=(alpha dots (alpha-n+1))/n!), display(binom(alpha,0)=1).$
  - $alpha in NN, x in (-oo,+oo),$
  - $alpha>0, x in [-1,1],$
  - $-1<=alpha<0, x in (-1,1],$
  - $alpha<=-1, x in (-1,1).$

*命题* $quad$ 设 $f,g$ 分别有幂级数展式 $ f(x)=sum_(n=0)^oo a_n x^n, quad x in (-R_1,R_1), \ g(x)=sum_(n=0)^oo b_n x^n, quad x in (-R_2,R_2), $ 则 $f g$ 在 $(-R,R), R:=min(R_1,R_2)$ 上能展成幂级数, 且 $ f(x)g(x)=sum_(n=0)^oo c_n x^n, quad c_n=sum_(k=0)^n a_k b_(n-k). $

*证明* $quad$ 幂级数在其收敛域内为内闭绝对一致收敛. #h(1fr) $square.stroked$

*例* $quad$ 设级数 $sum a_n,sum b_n$ 收敛且 Cauchy 乘积 $sum c_n$ 收敛, 则 $(sum a_n) (sum b_n) = sum c_n.$

*证明* $quad$ 令 $f(x)=sum a_n x^n, g(x)=sum b_n x^n, x in [0,1].$ 于是 $f(x)g(x)=sum c_n x^n, x in [0,1).$ \ 由于 $sum c_n$ 收敛, 上式右端的和函数在 $[0,1]$ 上连续, 令 $x->1^-$ 即有 $f(1)g(1)=sum c_n.$ #h(1fr) $square.stroked$

*例* $quad$ 求 $ln^2 (1+x)$ 的幂级数展式. 

*解* $quad ln(1+x)=display(sum_(n=1)^oo (-1)^n/n! x^n), x in (-1,1].$ $ c_n = sum_(k=1)^(n-1) a_k a_(n-k) = (2(-1)^n)/n sum_(k=1)^(n-1)1/k. $

== $section 4$ 连续函数的多项式逼近

给定 $f(x)=display(sum_(n=0)^oo a_n x^n), x in (-R,R),$ 则 $forall [a,b] subset (-R,R), display(sum_(n=0)^oo a_n x^n)$ 在 $[a,b]$ 上一致收敛到 $f(x).$

令 $S_n (x)=display(sum_(k=0)^n a_k x^k), $ 则 $forall epsilon>0,exists N, forall n>=N, abs(S_n (x)-f(x))<epsilon, forall x in [a,b].$

*定义* $quad$ 设 $f$ 在 $[a,b]$ 上定义. 若 $forall epsilon>0,$ 都有多项式 $P(x)$ s.t. $ abs(f(x)-P(x))<epsilon, quad forall x in [a,b], $ 则称 $f$ 在 $[a,b]$ 上可被*多项式逼近*. 解析函数在任何闭区间上可被多项式逼近. 

$f$ 在 $[a,b]$ 上可被多项式逼近 $<==> exists P_n (x)$ s.t. $P_n (x) arrows f(x), x in [a,b].$

*推论* $quad$ 若 $f$ 在 $[a,b]$ 上可被多项式逼近, 那么 $f in C[a,b].$ 

*定理 (Weierstrass)* $quad$ 若 $f in C[a,b],$ 则 $f$ 在 $[a,b]$ 上可被多项式逼近. 

*引理* $quad f in C[a,b]$ 可以被分段线性函数逼近. 

*定义* $quad$ 设 $g$ 在 $[a,b]$ 上有定义, 若有 $[a,b]$ 的分割 $Delta$ s.t. $g bar_([x_(i-1),x_i])$ 为线性的, 则称 $g$ 在 $[a,b]$ 上为分段线性函数. 记 $H(x)=(x+abs(x))/2.$

*引理* $quad$ 设 $g$ 为 $[a,b]$ 上的分段线性函数, 则 $exists c_i$ s.t. $g(x)=c_0+display(sum_(i=1)^n c_i H(x-x_0)).$ #h(1fr) $square.stroked$

*定理* $quad forall c in RR, forall [A,B] subset RR, abs(x-c)$ 可在 $[A,B]$ 上被多项式逼近.  

*证明* $quad$ 先看 $c=0,[A,B]=[-1,1].$ $ abs(x)=sqrt(x^2)=sqrt(1+x^2-1)=(1+(x^2-1))^(1/2), $ 令 $t=x^2-1, abs(x)<=1 ==>abs(t)<=1.$ 结合 $(1+t)^(1/2)=display(sum_(n=0)^oo binom(1/2,n) t^n), quad t in (-1,1],$ 记 $ S_n (t)=sum_(k=0)^n binom(1/2,k) x^k, quad S_n (t) arrows (1+t)^(1/2), t in [-1,1], $ 即 $ forall epsilon>0, exists N, forall n>N, abs(S_n (t)-(1+t)^(1/2))<epsilon, forall t in [-1,1]. $  特别的对 $x in [-1,1],t=x^2-1 in [-1,1],$ 故 $ abs(S_n (x^2-1)-(1+x^2-1)^(1/2))&<epsilon, \ abs(S_n (x^2-1)-abs(x))&<epsilon. $ 于是取 $epsilon=1/n^2, exists$ 多项式 $Q_n (x)$ s.t. $ abs(Q_n (x)-abs(x))<1/n^2, quad forall abs(x)<=1. $ 令 $P_n (x)=n Q_n ((x-c)/n),$ 则 $ abs(P_n (x)-abs(x-c))&=abs(n Q_n ((x-c)/n)-abs(x-c)) \ &= n abs(Q_n ((x-c)/n)-abs((x-c)/n)) \ &<1/n^2, quad forall abs((x-c)/n)<=1. $ #h(1fr) $square.stroked$

*另法* $quad abs(x)<=1.$ 令 $a_0 (x) eq.triple 0,$ 令 $ a_(n+1) (x)=a_n (x)+1/2(x^2-a_n^2 (x)) $  则 $a_(n+1) (x)>=a_n (x),$ 且 $limits(lim)_(n->oo) a_n (x)=abs(x).$ 由 Dini 定理知一致收敛性, 且 $a_n (x)$ 均为多项式. 