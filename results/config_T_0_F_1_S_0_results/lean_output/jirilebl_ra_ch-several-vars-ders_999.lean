import Mathlib

open Set

/-- Existence of an integral operator induced by a continuous kernel k on [0,1]^2.
    We formulate that there exists a linear operator L : C([0,1], ℝ) → C([0,1], ℝ)
    given pointwise by (L f)(y) = Rint (fun x => k (x,y) * f x) where Rint denotes
    the (definite) integral on [0,1]. This file only states the theorem (no proof).
-/
theorem exists_linear_L (k : ℝ × ℝ → ℝ)
  (hk : ContinuousOn k (Set.Icc (0:Real) 1 ×ˢ Set.Icc (0:Real) 1)) :
  ∃ (Rint : (Subtype (Set.Icc (0:Real) 1) → ℝ) → ℝ)
    (L : ContinuousMap (Subtype (Set.Icc (0:Real) 1)) ℝ → ContinuousMap (Subtype (Set.Icc (0:Real) 1)) ℝ),
    (∀ (f : ContinuousMap (Subtype (Set.Icc (0:Real) 1)) ℝ) (y : Subtype (Set.Icc (0:Real) 1)),
      (L f) y = Rint (fun x : Subtype (Set.Icc (0:Real) 1) => k (x.1, y.1) * (f : Subtype (Set.Icc (0:Real) 1) → ℝ) x))
    ∧ (∀ (f g : ContinuousMap (Subtype (Set.Icc (0:Real) 1)) ℝ) (a b : ℝ),
        L (a • f + b • g) = a • L f + b • L g) := by sorry
