import Mathlib
open Set Filter Function
open Topology

/-- Suppose $f$ is a real function defined on $\mathbb{R}$ which satisfies $\lim_{h \rightarrow 0} f(x + h) - f(x - h) = 0$ for every $x \in \mathbb{R}$. Show that $f$ does not need to be continuous. -/
theorem not_continuous_of_lim_zero_sub_add (f : ℝ → ℝ) (hf : ∀ x, Tendsto (fun h => f (x + h) - f (x - h)) (𝓝 0) (𝓝 0)) : ¬Continuous f := sorry