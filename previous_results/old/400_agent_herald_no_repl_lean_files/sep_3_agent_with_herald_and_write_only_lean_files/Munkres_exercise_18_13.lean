import Mathlib

theorem unique_continuous_extension {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {A : Set X} {f : A → Y} (hf : Continuous f)
  {g1 g2 : Subtype (closure A) → Y} (hg1 : Continuous g1) (hg2 : Continuous g2)
  (h1 : ∀ a : A, g1 ⟨(a : X), subset_closure A a.2⟩ = f a)
  (h2 : ∀ a : A, g2 ⟨(a : X), subset_closure A a.2⟩ = f a) : g1 = g2 := by sorry
