import Mathlib

/- Exercise: Show that if s_n -> a then |s_n| -> |a|. -/

theorem Rudin_exercise_3_1a (s : ℕ → ℝ) {a : ℝ} (h : Filter.Tendsto s Filter.atTop (nhds a)) :
  Filter.Tendsto (fun n => |s n|) Filter.atTop (nhds |a|) := by sorry
