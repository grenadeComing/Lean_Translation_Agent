import Mathlib

open Topology

variable {X : Type _} [TopologicalSpace X] {n : Nat}

theorem benmckay_top_continuity_101 (f g : X → Fin n → ℝ) (hf : Continuous f) (hg : Continuous g) :
  Continuous (f + g) := by sorry
