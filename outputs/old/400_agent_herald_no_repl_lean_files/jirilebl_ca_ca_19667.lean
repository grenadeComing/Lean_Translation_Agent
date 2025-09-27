import Mathlib

/-!
Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. If |f| attains a local maximum at z0 ∈ U,
then f is constant in a neighborhood of z0.
-/

open Set

theorem holomorphic_const_of_local_max {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : IsLocalMax (fun z => Complex.abs (f z)) z0) :
  ∃ V : Set ℂ, IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ ∀ z ∈ V, f z = f z0 := by sorry
