import Mathlib

/-- Let n be a natural number and A be an invertible real n×n matrix. Assume there exists a real eigenvalue e1 > 1 with a nonzero eigenvector v, and there exists a real eigenvalue e2 < -1 with a nonzero eigenvector w. Then the linear map A : ℝ^n → ℝ^n (x ↦ A.mulVec x) is a covering map. -/
theorem benmckay_top_covering_spaces_216 (n : ℕ) (A : Matrix (Fin n) (Fin n) ℝ)
  (hA : IsUnit A)
  (e1 : ℝ) (he1 : 1 < e1) (v : Fin n → ℝ) (hv : v ≠ 0) (hAe1 : A.mulVec v = e1 • v)
  (e2 : ℝ) (he2 : e2 < -1) (w : Fin n → ℝ) (hw : w ≠ 0) (hAe2 : A.mulVec w = e2 • w) :
  IsCoveringMap (A.mulVec : (Fin n → ℝ) → Fin n → ℝ) := by sorry
