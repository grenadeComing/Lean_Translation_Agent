import Mathlib

open Set

variable (harmonic_on : Set (ℝ × ℝ) → (ℝ × ℝ → ℝ) → Prop)

/-- Maximum principle for harmonic functions on connected open subsets of R^2.
    We state the theorem abstractly: `harmonic_on U f` is a predicate meaning
    “f is harmonic on U”. The proof is omitted (`by sorry`). -/
theorem maximum_principle_harmonic {U : Set (ℝ × ℝ)} (hU_open : IsOpen U) (hU_conn : IsConnected U)
  {f : ℝ × ℝ → ℝ} (hf : harmonic_on U f) (p : ℝ × ℝ) (hp : p ∈ U) (hmax : ∀ x ∈ U, f x ≤ f p) :
  ∀ x ∈ U, f x = f p := by
  sorry
