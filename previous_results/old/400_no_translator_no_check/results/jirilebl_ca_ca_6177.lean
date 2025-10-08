import Mathlib

open Set

theorem arg_monotone_iff_deriv_arg_const
  {a b : ℝ} {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf_nonconst : ∃ z w, z ∈ U ∧ w ∈ U ∧ f z ≠ f w)
  {α : ℝ → ℂ} (hα_mem : ∀ t, t ∈ Set.Icc a b → α t ∈ U)
  (hf_hasderiv : ∃ (f' : ℂ → ℂ), (∀ z, z ∈ U → HasDerivAt f (f' z) z))
  (hα_hasderiv : ∃ (α' : ℝ → ℂ), (∀ t, t ∈ Set.Icc a b → HasDerivAt α (α' t) t))
  (hα'_ne : ∀ t, t ∈ Set.Icc a b → (Classical.choose hα_hasderiv) t ≠ 0)
  (hf_avoids_zero : ∀ t, t ∈ Set.Icc a b → f (α t) ≠ 0) :
  StrictMonoOn (fun t => Complex.arg (f (α t))) (Set.Icc a b) ↔
    ∃ θ : ℝ, ∀ t, t ∈ Set.Icc a b → Complex.arg ((Classical.choose hf_hasderiv) (α t) * (Classical.choose hα_hasderiv) t) = θ := by sorry
