import Mathlib

open Matrix

/-- Example in 2x2 real matrices: there exist T and S which are normal but T+S is not.
    This shows the set of normal operators is not a subspace of L(V) when dim V ≥ 2. -/
theorem normal_ops_not_subspace :
  ∃ (T S : Matrix (Fin 2) (Fin 2) ℝ),
    T * T.conjTranspose = T.conjTranspose * T ∧
    S * S.conjTranspose = S.conjTranspose * S ∧
    ¬ ((T + S) * (T + S).conjTranspose = (T + S).conjTranspose * (T + S)) := by
  sorry