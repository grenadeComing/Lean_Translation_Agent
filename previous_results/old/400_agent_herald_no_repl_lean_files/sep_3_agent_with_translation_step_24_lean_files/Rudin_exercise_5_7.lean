import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

theorem Rudin_exercise_5_7 {f g : 𝕜 → 𝕜} {f' g' x : 𝕜}
  (hf : HasDerivAt f f' x) (hg : HasDerivAt g g' x)
  (hg_ne : g' ≠ 0) (f_x : f x = 0) (g_x : g x = 0) :
  Filter.Tendsto (fun t => f t / g t) (nhdsWithin x {t | t ≠ x}) (nhds (f' / g')) := by sorry
