<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Example: Topos>

  <subsection|Sieve categorifies subset>

  Let us consider the categorical version of subset using the same trick that
  bridging set theory and category theory by hom-functors.

  To do so, we first recall in set theory. Let <math|<math-ss|C>> a locally
  small category. The set <math|<math-ss|C><around*|(|X,Y|)>> for some
  <math|X,Y\<in\><math-ss|C>>, if not empty, has subset <math|S> which
  contains some, but not all, morphisms from <math|X> to <math|Y>. Now, we
  lift this to category theory. In category theory,
  <math|<math-ss|C><around*|(|X,Y|)>> relates to hom-functor
  <math|<math-ss|C><around*|(|-,Y|)>>. So, for any <math|X\<in\><math-ss|C>>,
  we shall assign a subset of <math|<math-ss|C><around*|(|X,Y|)>>, denoted by
  <math|S<rsub|Y><around*|(|X|)>>. The <math|S<rsub|Y>> is a map from
  <math|<math-ss|C>> (or <math|<math-ss|C><rsup|op>>) to
  <math|<math-ss|Set>>, but may not functorial. In category theory,
  non-functorial map is useless, indicating that we have to additionally
  define how <math|S<rsub|Y>> maps on morphisms of <math|<math-ss|C>> so that
  it can be functorial. Recall that <math|<math-ss|C><around*|(|-,Y|)>> maps
  <math|f> in <math|<math-ss|C>> to <math|f<rsup|\<ast\>>>, so an educated
  guess is <math|S<rsub|Y><around*|(|f|)>> is still <math|f<rsup|\<ast\>>>.
  Explicitly, for each <math|f:B\<rightarrow\>A> in <math|<math-ss|C>>, we
  have

  <\equation*>
    <tabular*|<tformat|<table|<row|<cell|S<rsub|Y><around*|(|f|)>:>|<cell|S<rsub|Y><around*|(|A|)>\<subset\><math-ss|C><around*|(|A,Y|)>>|<cell|\<rightarrow\>>|<cell|S<rsub|Y><around*|(|B|)>\<subset\><math-ss|C><around*|(|B,Y|)>>>|<row|<cell|>|<cell|\<zeta\>:A\<rightarrow\>Y\<in\>S<rsub|Y><around*|(|A|)>>|<cell|\<mapsto\>>|<cell|\<zeta\>\<circ\>f:B\<rightarrow\>Y\<in\>S<rsub|Y><around*|(|B|)>,>>>>>
  </equation*>

  where we have employed <math|f<rsup|\<ast\>><around*|(|\<zeta\>|)>\<assign\>\<zeta\>\<circ\>f>.
  To make the second line possible, we have to demand that
  <math|\<zeta\>\<circ\>f\<in\>S<rsub|Y><around*|(|B|)>> for each
  <math|\<zeta\>\<in\>S<rsub|Y><around*|(|A|)>> and each
  <math|f:B\<rightarrow\>A> in <math|<math-ss|C>>. This means
  <math|S<rsub|Y><around*|(|A|)>> and <math|S<rsub|Y><around*|(|B|)>> cannot
  be arbitrary, but restricted by <math|f<rsup|\<ast\>><around*|(|S<rsub|Y><around*|(|A|)>|)>\<subset\>S<rsub|Y><around*|(|B|)>>,
  where we employed the usual notation <math|f<rsup|\<ast\>><around*|(|S<rsub|Y><around*|(|A|)>|)>\<assign\><around*|{|f<rsup|\<ast\>><around*|(|\<zeta\>|)>\|\<forall\>\<zeta\>\<in\>S<rsub|Y><around*|(|A|)>|}>>.
  We summarize the above discussion as follow <\footnote>
    A traditional way of defining sieve is using set. That is, a sieve as a
    set, denoted by <math|<wide|S|~><rsub|Y>>, is defined as
    <math|\<cup\><rsub|X\<in\><math-ss|C>>S<rsub|Y><around*|(|X|)>>. This
    expression is valid when <math|<math-ss|C>> is small. It is easy to find
    that

    <\equation*>
      <wide|S|~><rsub|Y>\<assign\><around*|{|\<zeta\>:X\<rightarrow\>Y\|\<forall\>f:W\<rightarrow\>X,\<zeta\>\<circ\>f\<in\><wide|S|~><rsub|Y>|}>.
    </equation*>

    This is how sieve is defined in many materials. Even though this kind of
    definition is not categorical enough, it does furnish some hint. For
    instance, given an arbitrary set <math|<around*|{|\<zeta\><rsub|i>:X<rsub|i>\<rightarrow\>Y\|i\<in\>I,X<rsub|i>\<in\><math-ss|C>|}>>,
    we can construct a smallest sieve <math|<wide|S|~><rsub|Y>> that contains
    the set, by the following algorithm.

    <\algorithm>
      <\enumerate-numeric>
        <item>Initialize <math|<wide|S|~><rsub|Y>=<around*|{|\<zeta\><rsub|i>:X<rsub|i>\<rightarrow\>Y\|i\<in\>I,X<rsub|i>\<in\><math-ss|C>|}>>.
        Auxillary set <math|V\<assign\><around*|{|X<rsub|i>\|i\<in\>I|}>>.

        <item>For each <math|f:A\<rightarrow\>B> in <math|<math-ss|C>>, if
        <math|B\<in\>V> then <math|<wide|S|~><rsub|Y>\<rightarrow\><wide|S|~><rsub|Y>\<cup\>f<rsup|\<ast\>><around*|(|<wide|S|~><rsub|Y>|)>>
        and <math|V\<rightarrow\>V\<cup\><around*|{|A|}>>.
      </enumerate-numeric>
    </algorithm>

    In short,

    <\equation*>
      <wide|S|~><rsub|Y>=\<cup\><rsub|i\<in\>I><around*|{|\<zeta\><rsub|i>\<circ\>f\|cod<around*|(|f|)>=X<rsub|i>|}>.
    </equation*>

    This smallest sieve is called the sieve generated by morphisms.
  </footnote>.

  <\definition>
    [Sieve] Let <math|<math-ss|C>> a locally small category, and <math|Y> an
    object in <math|<math-ss|C>>. A presheaf <math|S<rsub|Y>> is called a
    <with|font-series|bold|sieve> of <math|Y>, if it maps each object
    <math|X\<in\><math-ss|C>> to a subset <math|S<rsub|Y><around*|(|X|)>> of
    <math|<math-ss|C><around*|(|X,Y|)>>, and each morphism
    <math|f:B\<rightarrow\>A> to the <math|f<rsup|\<ast\>>:S<rsub|Y><around*|(|A|)>\<rightarrow\>S<rsub|Y><around*|(|B|)>>,
    such that <math|f<rsup|\<ast\>><around*|(|S<rsub|Y><around*|(|A|)>|)>\<subset\>S<rsub|Y><around*|(|B|)>>
    holds for each <math|A,B\<in\><math-ss|C>>.
  </definition>

  The functoriality of <math|S<rsub|Y>> can be checked directly <\footnote>
    The check is left to reader. Hint: repeat the corresponding calculation
    in section <reference|section: Morphisms with fixed codomain can be
    represented by hom-functor>.
  </footnote>. It is called a sieve since it sifts, in a functorial way, a
  subset of <math|<math-ss|C><around*|(|X,Y|)>> for each
  <math|X\<in\><math-ss|C>>.

  <subsection|Union and intersection of sieves are sieves>

  Furthermore, it is natural to consider the union and intersection of two
  sieves, as in the case of subsets. Following the same strategy of defining
  sieve, it is natural to guess that, the union of two sieves
  <math|S<rsub|Y>> and <math|S<rsub|Y><rprime|'>> is the presheaf, denoted by
  <math|S<rsub|Y>\<cup\>S<rsub|Y><rprime|'>>, that maps each
  <math|X\<in\><math-ss|C>> to <math|S<rsub|Y><around*|(|X|)>\<cup\>S<rsub|Y><rprime|'><around*|(|X|)>>
  and each morphism <math|f> in <math|<math-ss|C>> to <math|f<rsup|\<ast\>>>
  again. As the union of subsets is a subset, we have to prove that
  <math|S<rsub|Y>\<cup\>S<rsub|Y><rprime|'>> is a sieve. Indeed, for each
  <math|f:B\<rightarrow\>A>,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|f<rsup|\<ast\>><around*|(|<around*|(|S<rsub|Y>\<cup\>S<rsub|Y><rprime|'>|)><around*|(|A|)>|)>>>|<row|<cell|<around*|{|definition
    of S<rsub|Y>\<cup\>S<rsub|Y><rprime|'>|}>=>|<cell|f<rsup|\<ast\>><around*|(|S<rsub|Y><around*|(|A|)>\<cup\>S<rsub|Y><rprime|'><around*|(|A|)>|)>>>|<row|<cell|<around*|{|<text|<math|simple
    conclusion of set>>|}>=>|<cell|f<rsup|\<ast\>><around*|(|S<rsub|Y><around*|(|A|)>|)>\<cup\>f<rsup|\<ast\>><around*|(|S<rsub|Y><rprime|'><around*|(|A|)>|)>>>|<row|<cell|<around*|{|S<rsub|Y>
    and S<rsub|Y><rprime|'> are sieves|}>\<subset\>>|<cell|S<rsub|Y><around*|(|B|)>\<cup\>S<rprime|'><rsub|Y><around*|(|B|)>.>>>>
  </align>

  The same goes for intersection of sieves. Explicitly,
  <math|S<rsub|Y>\<cap\>S<rsub|Y><rprime|'>> maps each
  <math|X\<in\><math-ss|C>> to <math|S<rsub|Y><around*|(|X|)>\<cap\>S<rsub|Y><rprime|'><around*|(|X|)>>
  and each morphism <math|f> in <math|<math-ss|C>> to <math|f<rsup|\<ast\>>>.

  <subsection|Pushforward and pullback of sieves are sieves>

  In section <reference|section: Yoneda functor is fully faithful>, we have
  shown that the natural transformation that connect two hom-functors
  <math|<math-ss|C><around*|(|-,X|)>> and <math|<math-ss|C><around*|(|-,Y|)>>
  is <math|g<rsub|\<ast\>><around*|(|\<zeta\>|)>\<assign\>g\<circ\>\<zeta\>>
  for each <math|g:X\<rightarrow\>Y> in a small category <math|<math-ss|C>>.
  Since sieve is a \Psubset\Q of hom-functor, it is natural to guess that the
  <math|g<rsub|\<ast\>>> also converts a sieve on <math|X> to a sieve on
  <math|Y>.

  By either morphism <math|X\<rightarrow\>Y> or morphism
  <math|Y\<rightarrow\>X>, there are only two ways of constructing
  transformation from a sieve on <math|X>, to a sieve on <math|Y>, which we
  call the pushforward and pullback of sieve. Indeed, given
  <math|g:X\<rightarrow\>Y>, the only way of constructing a sieve like
  functor by using <math|g<rsub|\<ast\>>> is, for each
  <math|A\<in\><math-ss|C>>,

  <\equation*>
    g<rsub|\<ast\>>S<rsub|X><around*|(|A|)>\<assign\><around*|{|g\<circ\>\<zeta\>:A\<rightarrow\>Y\|\<zeta\>:A\<rightarrow\>X\<in\>S<rsub|X><around*|(|A|)>|}>,
  </equation*>

  which we call the <with|font-series|bold|pushforward of sieve>
  <math|S<rsub|X>> by <math|g>. And given <math|h:Y\<rightarrow\>X>, the only
  way comes to be

  <\equation*>
    h<rsup|\<ast\>>S<rsub|X><around*|(|A|)>\<assign\><around*|{|\<eta\>:A\<rightarrow\>X\|h<rsub|\<ast\>>\<circ\>\<eta\>:A\<rightarrow\>Y\<in\>S<rsub|X><around*|(|A|)>|}>,
  </equation*>

  which we call the <with|font-series|bold|pullback of sieve>
  <math|S<rsub|X>> by <math|h>.<\footnote>
    Should not mix <math|h<rsup|\<ast\>>S<rsub|X>> with
    <math|h<rsup|\<ast\>><around*|(|S<rsub|X><around*|(|A|)>|)>>, which is
    defined by <math|<around*|{|h<rsup|\<ast\>><around*|(|\<zeta\>|)>\|\<zeta\>\<in\>S<rsub|X><around*|(|A|)>|}>>.
  </footnote> It can be checked directly that both
  <math|g<rsub|\<ast\>>S<rsub|X>> and <math|h<rsup|\<ast\>>S<rsub|X>> are
  sieves on <math|Y>.<\footnote>
    The check is left to reader.
  </footnote>

  <subsection|Pullback of sieve describes covering in category of open
  subsets>

  Let us see what sieve describes in explicit categories. In the beginning,
  the smaller a category is, the better to start considering. So, instead of
  considering the category <math|<math-ss|Set>>, as we usually do, it is
  suggested to consider a sub-category of it, a much smaller one, the
  category of open subsets.

  Let <math|V> be a set, and <math|U> a collection of subsets of <math|V>.
  This collection forms a category of open subsets of <math|V>, called
  <math|<math-ss|Op><around*|(|U|)>>, where the collection of objects is
  <math|U> itself, and the collection of morphisms between each
  <math|X,Y\<in\>U> is <\footnote>
    Recall that <math|\<hookrightarrow\>> denotes inclusion. That is, given
    <math|X\<subset\>Y>, an inclusion map <math|f:X\<hookrightarrow\>Y> is
    defined by <math|f<around*|(|x|)>=x>.
  </footnote>

  <\equation*>
    <tabular*|<tformat|<table|<row|<cell|<math-ss|Op><around*|(|U|)><around*|(|X,Y|)>=<choice|<tformat|<table|<row|<cell|<around*|{|X\<hookrightarrow\>Y|}>>|<cell|<text|when
    <math|X\<subset\>Y>>>>|<row|<cell|\<varnothing\>>|<cell|<text|otherwise>>>>>>>>>>>.
  </equation*>

  It can be directly checked that <math|<math-ss|Op><around*|(|U|)>> is
  indeed a category. It is a toy model within <math|<math-ss|Set>>.

  Now, consider a sieve of <math|Y\<in\><math-ss|O>p<around*|(|U|)>>,
  <math|S<rsub|Y>>. It is found that, instead of directly considering the
  functor <math|S<rsub|Y>>, it is more convenient to consider the set
  <math|<wide|S|~><rsub|Y>\<assign\>\<cup\><rsub|X\<in\><math-ss|Op><around*|(|U|)>>S<rsub|Y><around*|(|X|)>>.
  For any morphism <math|X\<subset\>Y>, and any <math|W\<subset\>X>,
  <math|W\<subset\>Y> must be in <math|S<rsub|Y><around*|(|W|)>>

  And it comes to be <math|<around*|{|X<rsub|i>\<hookrightarrow\>Y\|X<rsub|i>\<in\>U,X<rsub|i>\<subset\>X|}>>.\ 

  \;

  <subsection|Topology>

  Next, we are to categorify topology. A topology on the set <math|Y> is
  assigned by a collection of subsets <math|<with|font|cal|T>=<around*|{|X<rsub|i>\|i\<in\>I,X<rsub|i>\<subset\>Y|}>>,
  called the open subsets, so that the following axioms are satisfied.

  <\enumerate-numeric>
    <item><math|Y\<in\><with|font|cal|T>>.

    <item><math|\<cup\><rsub|j\<in\>J>X<rsub|j>\<in\><with|font|cal|T>> for
    any <math|J\<subset\>I>.

    <item><math|\<cap\><rsub|k\<in\>K>X<rsub|k>\<in\><with|font|cal|T>> for
    any finite <math|K\<subset\>I>.
  </enumerate-numeric>

  In category theory, subset of <math|Y> corresponds to sieve of <math|Y>.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|1.5|2>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnote-3|<tuple|3|2>>
    <associate|footnote-4|<tuple|4|2>>
    <associate|footnote-5|<tuple|5|2>>
    <associate|footnr-1|<tuple|2|1>>
    <associate|footnr-2|<tuple|2|1>>
    <associate|footnr-3|<tuple|3|2>>
    <associate|footnr-4|<tuple|4|2>>
    <associate|footnr-5|<tuple|5|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Example:
      Topos> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Sieve categorifies subset
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Union and intersection of
      sieves are sieves <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Pushforward and pullback of
      sieves are sieves <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Pullback of sieve describes
      covering in category of open subsets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Topology
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>