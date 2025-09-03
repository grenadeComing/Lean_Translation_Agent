import Mathlib


/-- If $R$ is a commutative ring and $a \in R$, let $L(a) = \{x \in R \mid xa = 0\}$. Prove that $L(a)$ is an ideal of $R$. -/
theorem isIdeal_ker_mul_left {R : Type*} [CommRing R] (a : R) :
  Ideal.IsIdeal (setOf (λ x => x * a = 0)) := by sorry
