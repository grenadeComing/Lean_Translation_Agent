import Mathlib
open Filter Set
open Topology

/-- Suppose S ⊂ ℝ, c is a cluster point of S (i.e. c ∈ closure (S \ {c})), f : ℝ → ℝ is a function, a ∈ ℝ, and f(x) → L as x → c along S. Then a * f(x) → a * L as x → c along S. -/
theorem tendsto_const_mul {S : Set ℝ} {c a L : ℝ} {f : ℝ → ℝ} (hc : c ∈ closure (S \ {c}))
  (h : Tendsto f (𝓝[ S ] c) (𝓝 L)) : Tendsto (fun x => a * f x) (𝓝[ S ] c) (𝓝 (a * L)) := by sorry
