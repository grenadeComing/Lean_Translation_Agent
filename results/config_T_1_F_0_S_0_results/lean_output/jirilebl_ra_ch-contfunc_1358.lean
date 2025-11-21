import Mathlib

/-- Suppose S ⊂ ℝ, c is a cluster point of S, f : S → ℝ and g : S → ℝ are functions, and a ∈ ℝ,
    such that f(x) → L and g(x) → M as x → c. Then a * f(x) → a * L as x → c. -/
variable {S : Set ℝ} {c a L M : ℝ} {f g : ℝ → ℝ}

theorem tendsto_const_mul_of_tendsto (hc : c ∈ closure (S \ {c}))
  (hf : Tendsto f (nhdsWithin c S) (nhds L)) (hg : Tendsto g (nhdsWithin c S) (nhds M)) :
  Tendsto (fun x => a * f x) (nhdsWithin c S) (nhds (a * L)) := by sorry
