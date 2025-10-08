import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [T2Space X] [PathConnectedSpace X]
variable [TopologicalSpace Y] [T2Space Y] [PathConnectedSpace Y]
variable (x0 : X) (y0 : Y) (f : X → Y) (h : f x0 = y0)

variable (pi_quot : Type*) (to_fiber : pi_quot → {x : X // f x = y0})

theorem covering_space_quotient_bijection : Function.Bijective (to_fiber : pi_quot → {x : X // f x = y0}) := by
  sorry
