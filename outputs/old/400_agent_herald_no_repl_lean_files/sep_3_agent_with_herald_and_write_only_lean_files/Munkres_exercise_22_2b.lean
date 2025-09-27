import Mathlib

/-- If A ⊆ X, a retraction r : X → A is a continuous map with r(a) = a for all a ∈ A.
    We show that such a retraction is a quotient map, i.e. a set U ⊆ A is open iff r⁻¹(U) is open in X. -/
theorem retraction_is_quotient {X : Type*} [TopologicalSpace X] {A : Set X}
  (r : X → A) (hr : Continuous r) (hretract : ∀ a : A, r a = a) :
  ∀ U : Set A, IsOpen U ↔ IsOpen (r ⁻¹' U) := by sorry
