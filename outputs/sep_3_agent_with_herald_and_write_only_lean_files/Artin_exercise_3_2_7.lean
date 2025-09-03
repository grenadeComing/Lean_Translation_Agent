import Mathlib

/-- Every homomorphism of fields is injective. -/
theorem ring_hom.injective_of_fields {K L : Type*} [Field K] [Field L] (f : K →+* L) :
  Function.Injective f.to_fun := by sorry
