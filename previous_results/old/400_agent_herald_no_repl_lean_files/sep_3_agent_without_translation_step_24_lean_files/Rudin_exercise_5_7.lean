import Mathlib

variable {𝕜 : Type _} [NontriviallyNormedField 𝕜]

theorem Rudin_exercise_5_7 {f g : 𝕜 → 𝕜} {f' g' x : 𝕜}
  (hf : HasDerivAt f f' x) (hg : HasDerivAt g g' x) (hg' : g' ≠ 0) (hf0 : f x = 0) (hg0 : g x = 0) :
  Filter.Tendsto (fun t => f t / g t) (nhds x) (nhds (f' / g')) := by sorry
