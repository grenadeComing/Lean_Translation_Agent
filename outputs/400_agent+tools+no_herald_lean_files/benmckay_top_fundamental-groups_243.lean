import Mathlib

open Topology

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

-- unit interval as a subtype of ℝ
def I := {t : ℝ // 0 ≤ t ∧ t ≤ 1}

variable (F : I × X → Y)

-- evaluation at endpoints
def f0 (x : X) : Y := F (⟨0, by simp [zero_le]⟩, x)
def f1 (x : X) : Y := F (⟨1, by simp [le_refl]⟩, x)

variable {x0 x1 : X} {y0 y1 : Y}

-- we postulate the conjugation isomorphisms on fundamental groups
variable (x_star : FundamentalGroup X x0 → FundamentalGroup X x1)
variable (y_star : FundamentalGroup Y y0 → FundamentalGroup Y y1)

-- induced maps on fundamental groups corresponding to f0 and f1
variable (f0_star : FundamentalGroup X x0 → FundamentalGroup Y y0)
variable (f1_star : FundamentalGroup X x1 → FundamentalGroup Y y1)

theorem homotopy_induces_conjugation_relation :
  (y_star ∘ f0_star) = (f1_star ∘ x_star) := by sorry
