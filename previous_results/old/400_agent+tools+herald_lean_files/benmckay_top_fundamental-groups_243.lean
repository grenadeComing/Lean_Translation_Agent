import Mathlib

variables {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

variable (F : ({t : ℝ // 0 ≤ t ∧ t ≤ 1} × X) → Y)

-- Points and paths
variable (x0 x1 : X) (x : Path x0 x1)
variable (y0 y1 : Y) (y : Path y0 y1)

-- Change-of-basepoint isomorphisms and induced maps (abstractly)
variable (x_star : FundamentalGroup X x0 → FundamentalGroup X x1)
variable (y_star : FundamentalGroup Y y0 → FundamentalGroup Y y1)
variable (f0_star : FundamentalGroup X x0 → FundamentalGroup Y y0)
variable (f1_star : FundamentalGroup X x1 → FundamentalGroup Y y1)

lemma benmckay_top_fundamental_groups_243 :
  (y_star ∘ f0_star : FundamentalGroup X x0 → FundamentalGroup Y y1) =
    (f1_star ∘ x_star : FundamentalGroup X x0 → FundamentalGroup Y y1) := by
  sorry
