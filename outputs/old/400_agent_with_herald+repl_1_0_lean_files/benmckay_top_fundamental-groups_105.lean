import Mathlib

universe u

variable {X : Type u} [TopologicalSpace X]
variable (x0 x1 : X)
variable (pi1_0 pi1_1 : Type u) [Group pi1_0] [Group pi1_1]
variable (map : pi1_0 → pi1_1)

theorem fundamental_group_isomorphic_via_path :
  Function.Bijective map ∧ (∀ a b : pi1_0, map (a * b) = map a * map b) := by sorry
