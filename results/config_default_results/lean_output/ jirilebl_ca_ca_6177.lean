import Mathlib
open Set

/-- Translation of the statement (skeleton): open U subset of C, f holomorphic, α smooth, α t ∈ U on [a,b].
    The full equivalence with the constant argument derivative is left as a placeholder. -/
theorem strictMono_arg_iff_const_diffCont_on_is_open_extracted
  (U : Set ℂ) (hU : IsOpen U)
  (f : U → ℂ) (hf : HolomorphicOn U f)
  (α : ℝ → ℂ) (a b : ℝ)
  (hα : SmoothOn ℝ ℂ α (Icc a b))
  (hmem : ∀ t ∈ Icc a b, α t ∈ U) :
  StrictMonoOn (fun t => (f (α t)).arg) (Icc a b) ↔ True := by
  sorry
