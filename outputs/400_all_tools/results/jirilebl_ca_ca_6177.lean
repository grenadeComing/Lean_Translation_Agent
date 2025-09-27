import Mathlib
open Set Filter Function Complex Topology

/-- Let U : set ℂ be open, f : U → ℂ holomorphic and nonconstant. Let α : Icc a b → U be a smooth curve with α' (t) ≠ 0 for all t in [a,b]. Then f ∘ α changes argument strictly monotonically on [a,b] iff arg (f' (α t) * α' t) is constant on [a,b]. End the Lean4 statement with := by sorry and import Mathlib at top. -/
theorem strictMonoOn_arg_comp_iff_const_on_Icc {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
    (h : ¬∃ c, ∀ z ∈ U, f z = c) {α : ℝ → ℂ} (hα : ContinuousOn α (Icc a b))
    (hα' : ∀ t ∈ Icc a b, α t ∈ U) (hα0 : ∀ t ∈ Icc a b, α' t ≠ 0) :
    StrictMonoOn (arg ∘ f ∘ α) (Icc a b) ↔
      (∀ t ∈ Icc a b, HasDerivAt α (α' t) t) ∧
        (∀ t ∈ Icc a b, HasDerivAt f (f' (α t)) (α t)) ∧
          (∀ t ∈ Icc a b, (f' (α t) * α' t).arg = 0) := by sorry
