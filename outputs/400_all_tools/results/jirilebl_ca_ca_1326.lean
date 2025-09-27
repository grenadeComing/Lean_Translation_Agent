import Mathlib
open Set Filter Bornology
open scoped Real Topology ComplexConjugate

/-- If f : ℂ → ℂ satisfies f(z + w) = f(z) * f(w) for all z, w and f(0) = 1, then f(z) ≠ 0 for all z. (In particular use e^{z+w}=e^z e^w and e^0=1≠0 to show e^z≠0, but state the general lemma for any such f.) End the Lean statement with := by sorry and import Mathlib at the top. -/
theorem ne_zero_of_add_ext {f : ℂ → ℂ} (h : ∀ z w, f (z + w) = f z * f w) (hf : f 0 = 1) (z : ℂ) : f z ≠ 0   :=  by sorry