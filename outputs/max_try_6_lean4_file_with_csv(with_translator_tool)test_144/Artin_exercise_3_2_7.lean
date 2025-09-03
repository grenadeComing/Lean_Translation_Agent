import Mathlib

/-- Every ring homomorphism from a field is injective. -/
theorem ring_hom_field_injective {F K : Type _} [Field F] [Field K] (f : F →+* K) :
  Function.Injective (f : F → K) := by sorry
