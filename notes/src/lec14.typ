#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

== $section 4$ 级数的运算性质

=== 2. 交换律

*定理* $quad$ 设 $sum a_n$ 绝对收敛, 则对于任意重排 $f:NN->NN, sum a_(f(n))$ 也收敛, 且 $display(sum_(n=1)^infinity a_(f(n))=sum_(n=1)^infinity a_n).$

*证明* $quad$ 先看 $sum abs(a_n),$ 来证 $display(sum_(n=1)^infinity abs(a_n)=sum_(n=1)^infinity abs(a_(f(n)))).$ $ sum_(k=1)^n abs(a_(f(k)))<=sum_(k=1)^M abs(a_k)<=sum_(n=1)^infinity abs(a_n), $ 其中令 $M=max{f(k) | 1<=k<=n}.$ 于是 $sum abs(a_(f(n)))<=sum abs(a_n).$ 由于重排总是可逆, 反向的大小关系也成立, 因而 $ sum_(n=1)^infinity abs(a_(f(n)))=sum_(n=1)^infinity abs(a_n). $

由上述论证 $sum a_(f(n))$ 确实收敛, 来证 $sum a_n=sum a_(f(n)).$ $forall a in RR,$ 记 $ a^+=(a+abs(a))/2=cases(a quad "if" a>=0, 0 quad "otherwise") \ a^-=(abs(a)-a)/2=cases(-a quad &"if" a<=0, 0 quad &"otherwise") $ 则 $a=a^+-a^-.$ 由于 $sum abs(a^(+\/-)_n)<=sum abs(a_n)$ 知 $a^(+\/-)$ 均收敛, 从而有 $ sum_(n=1)^infinity a_(f(n))^+=sum_(n=1)^infinity a_n^+, quad  sum_(n=1)^infinity a_(f(n))^-=sum_(n=1)^infinity a_n^-. \ sum_(n=1)^infinity a_(f(n))=sum_(n=1)^infinity (a_(f(n))^+ - a_(f(n))^-)=sum_(n=1)^infinity a_n^+ - sum_(n=1)^infinity a_n^- = sum_(n=1)^infinity a_n. $ #h(1fr) $square.stroked$

*例* $quad$ 考虑级数 $display(sum_(n=1)^infinity (-1)^(n-1)/n=1-1/2+1/3-1/4+dots)$

*引理* $quad display(1+1/2+1/3+dots+1/n=ln n+c+epsilon_n), quad epsilon_n>0, thick epsilon_n=o(1).$

*证明* $quad$ 令 $a_n=1+display(1/2+1/3+dots+1/n-ln n)>0.$ 

$ln n=display(ln(n/(n-1) dot (n-1)/(n-2) dot dots dot 2/1)=ln(1+1/(n-1))+ln(1+1/(n-2))+dots+ln(1+1/1).)$

由于 $x>0$ 时 $display(ln(1+x)<x),$ 故 $ ln n<display(1/(n-1)+1/(n-2)+dots+1.) $

且 $a_n>a_(n+1):$ \ $a_n-a_(n+1)=ln(n+1)-ln n-display(1/(n+1)=integral_0^(1/n)(dif x)/(1+x)-1/(n+1)>1/n dot 1/(1+1/n)-1/(n+1)=0).$

令 $c=limits(lim)_(n->infinity)a_n>=0,thick  epsilon_n=a_n-c.$ 对 $display(sum (-1)^(n-1)/n)$ 重排: 先排两个正数, 再排一个负数. 

记上述级数的部分和为 $T_n,$ 则 $ T_(3n)&=display(1+1/2+1/3+dots+1/(4n)-(1/2+1/4+dots+1/(2n))-(1/2+1/4+dots+1/(4n))) \ &= 1+dots+1/(4n)-1/2(1+dots+1/(2n))-1/2(1+dots+1/n) \ &=ln 4n+c+epsilon_(4n)-1/2(ln 2n+c+epsilon_(2n))-1/2(ln n+c+epsilon_n) \ &--> ln 4-1/2 ln 2=3/2 ln 2. $

令 $S_n$ 为原级数的部分和, 则 $ S_(2n)&=1-1/2+1/3-dots-1/(2n) \ &= (ln 2n+c+epsilon_(2n))-(ln n+c+epsilon_n) \ &-->ln 2. $

注意到两个级数不收敛到同一极限!

*定理 (Riemann)* $quad$ 设 $sum a_n$ 条件收敛, 则 $forall S in [-infinity,+infinity], exists "重排" f: NN->NN "s.t." sum a_(f(n))=S.$

*证明* $quad$ 先设 $S>=0.$ 由已知 $display(lim_(n->infinity) a_n=0)$ 且 $sum abs(a_n)=+infinity,$ 从而 $sum a_n^+, sum a_n^-$ 都发散到 $+infinity.$

取 $p_1>=1 "s.t." display(sum_(k=1)^(p_1-1)a_k^+ <= S <sum_(k=1)^(p_1) a_k^+),$ 再取 $q_1>=1 "s.t." S-a_(q_1)^- <= display(sum_(k=1)^p_1 a_k^+-sum_(k=1)^(q_1) a_k^-<S.)$

类似的 $forall k>=1,exists p_k,q_k "s.t."$ $ S<&quad sum_(i=1)^p_k a_i^+-sum_(i=1)^q_(k-1)a_i^- quad <=S+a_(p_k)^+, \ S-a_(q_k)^- <= &quad sum_(i=1)^p_k a_i^+-sum_(i=1)^q_k a_i^- quad <S. $ 这样就得到了 $sum a_n$ 的一个重排在加括号后收敛到 $S.$ 习题中已经证明, 若每个括号中的项的符号相同, 则当加括号的级数收敛 $==>$ 原级数收敛, 且和相同. 

对于 $S=+infinity$ 的情形, 将上述 $p_k,q_k$ 对应的 $S$ 设为 $k$ 即可.  #h(1fr) $square.stroked$

=== 3. 分配律

$sum a_n$ 与 $sum b_n$ 相乘, 会出现 $a_k b_j, forall k,j>=1. {a_k b_j}_(k,j)$ 的任一排列都会给出级数相乘的定义. 
- 正方形排列: $ d_1&=a_1 b_1, \ d_2&=a_2 b_1+a_2 b_2+a_1 b_2, \ d_3&=a_3 b_1 + a_3 b_2 + a_3 b_3 + a_2 b_3 + a_1 b_3 quad dots $ 用部分和可表示为 $ D_n=sum_(k=1)^n d_k=(sum_(k=1)^n a_k)(sum_(j=1)^n b_j)=A_n B_n. $ 若 $sum a_n$ 与 $sum b_n$ 收敛, 则 $sum d_n$ 收敛, 且 $sum d_n=sum a_n sum b_n.$ #h(1fr)

- Cauchy 乘积:  $ c_1 &=a_1 b_1, \ c_2&=a_2 b_1+a_1 b_2, \ c_3&=a_1 b_3+a_2 b_2 + a_3 b_1 quad dots $ 通项即为 $ c_n=sum_(k+j=n+1) a_k b_j. $ $sum c_n$ 称为 $sum a_n$ 与 $sum b_n$ 的 Cauchy 乘积. 

*定理* $quad$ 若 $sum a_n,sum b_n$ 都绝对收敛, 则乘积矩阵的任一排列构成的级数均收敛, 且和为 $(sum a_n) (sum b_n).$

*证明* $quad$ 任给一排列 $f:NN->NN,$ 其生成的级数 $display(sum_(n=1)^infinity abs(a_(k_n)b_(j_n)))$ 前 $n$ 项的部分和为 $ sum_(i=1)^n abs(a_(k_i)b_(j_i))<=(sum_(i=1)^M abs(a_i))(sum_(i=1)^M abs(b_i))<=(sum abs(a_i))(sum abs(b_i)). $