import Mathlib

open Complex

theorem jirilebl_ca_ca_6177 (U : Set ℂ) (hU : IsOpen U) (f f' : ℂ → ℂ)
  {a b : ℝ} (α α' : ℝ → ℂ)
  (hα_smooth : True) (hα_nondeg : ∀ t ∈ Set.Icc a b, True) :
  StrictMonoOn (fun t => arg (f (α t))) (Set.Icc a b) ↔
  (∃ c : ℝ, ∀ t ∈ Set.Icc a b, arg (f' (α t) * α' t) = c) := by sorry
