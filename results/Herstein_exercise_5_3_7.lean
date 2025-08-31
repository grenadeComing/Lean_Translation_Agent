import Mathlib

/-- If `a ∈ K` and `a^2` is algebraic over the subfield `F` of `K`, then `a` is algebraic over `F`. -/
theorem of_pow_two {F K : Type*} [Field F] [Field K] [Algebra F K] {a : K}
    (h : IsAlgebraic F (a ^ 2)) : IsAlgebraic F a :=
  let ⟨p, p_ne_zero, hp⟩ := h
  let q := p.comp (Polynomial.X ^ 2)
  have q_ne_zero : q ≠ 0 := by
    intro H
    have := congr_arg Polynomial.natDegree H
    rw [Polynomial.natDegree_comp, Polynomial.natDegree_pow, Polynomial.natDegree_X, mul_one] at this
    rw [Nat.mul_eq_zero] at this
    cases this with degp deg2
    · exact p_ne_zero (Polynomial.natDegree_eq_zero_iff_degree_le_zero.mpr (le_of_eq degp))
    · exact absurd deg2 (Nat.one_ne_zero.symm)
  have q_a_zero : q.eval a = 0 := by
    rw [Polynomial.eval_comp, Polynomial.eval_pow, hp]
  ⟨q, q_ne_zero, q_a_zero⟩
