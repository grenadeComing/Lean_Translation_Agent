import Mathlib

variables {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  (A : Set X) (hA : Dense A)

theorem continuous_map_snd_equiv_const_on_slices :
  (ContinuousMap Y Z) ≃ { f : ContinuousMap (X × Y) Z // ∀ (x : X) (y₁ y₂ : Y), f (x, y₁) = f (x, y₂) } := by sorry
