import Mathlib

open Topology

/-- The fundamental group (abstracted here as `pi1`) acts on the fibre ` { x // p x = y0 }` of a map
    `p : X → Y`. We state the existence of a (continuous) action in the setting of a covering map.

    Note: to keep the statement flexible and avoid depending on a particular construction of
    the fundamental group in this file, we present `pi1` as an abstract `Group` equipped with a
    topology and an action `act`. The hypotheses `hpath_connected` and `hlocally_simply_connected`
    are placeholders for the usual hypotheses on `Y` (path connected and locally simply connected).
-/
theorem pi1_acts_on_fiber_continuously
  (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (hp : IsCoveringMap p) (y0 : Y)
  (pi1 : Type*) [Group pi1] [TopologicalSpace pi1]
  (act : pi1 → { x : X // p x = y0 } → { x : X // p x = y0 })
  (hpath_connected : Prop) (hlocally_simply_connected : Prop) :
  Continuous (fun zx : pi1 × { x : X // p x = y0 } => act zx.1 zx.2) := by sorry
