import Mathlib
open TopologicalSpace Metric Set Filter Asymptotics Function MeasureTheory AffineMap Bornology
open scoped Topology Filter NNReal Real

/-- If U ⊆ ℂ is open and f : U → ℂ is holomorphic and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_nonvanishing_derivative {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
    (hf : DifferentiableOn ℂ f U) (hf_inj : Injective f) :
    ∀ z ∈ U, deriv f z ≠ 0 := by sorry
