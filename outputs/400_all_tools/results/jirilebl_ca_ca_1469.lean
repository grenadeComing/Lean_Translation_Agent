import Mathlib
open Set Filter Bornology
open scoped Real Topology ComplexConjugate

/-- Replace previous Lean statement: use Filter.cocompact for 'z→∞' on ℂ. Translate: For complex f and L, Tendsto f (Filter.cocompact ℂ) (𝓝 L) ↔ ∀ ε>0, ∃ M, ∀ z, M < |z| → dist (f z) L < ε. End with := by sorry. -/
theorem tendsto_cocompact_iff_tac_3498 (f : ℂ → ℂ) (L : ℂ) : Tendsto f (cocompact ℂ) (𝓝 L) ↔ ∀ ε > 0, ∃ M, ∀ z, M < Complex.abs z → dist (f z) L < ε := by sorry
