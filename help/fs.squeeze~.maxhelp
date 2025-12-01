{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 59.0, 130.0, 1373.0, 792.0 ],
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 176.0, 758.5, 96.0, 24.0 ],
                    "presentation_linecount": 4,
                    "text": "Enable Audio"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 155.0, 49.0, 55.0, 24.0 ],
                    "text": "PLAY"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 355.0, 208.0546875, 221.0, 127.0 ],
                    "text": "Morphs between single band and multiband operation.\n\nMultiband operation has been tuned to provide a flat frequency response with slight mid band attenuation and bass boost, similar to the original OTT. Multiband processing may exceed the Ceiling."
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 355.0, 373.0, 221.0, 127.0 ],
                    "text": "The level at which processing will take place. Anything above this value will be pushed closer to the 'Ceiling', anything below this level will be unaffected.\n\nVery low values can bring up minute details that otherwise might never be heard, which can lead to interesting yet unpredictable results."
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 917.0, 208.0546875, 221.0, 33.0 ],
                    "text": "Adjusts the balance between the processed and unprocessed signal."
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 917.0, 374.0546875, 222.0, 141.0 ],
                    "text": "The level that the affected audio will be normalized to.\n\nLower values combined with adjusting the 'Mix' allows you to tame the processing, making it more useful in a mixing context.\n\nThe Ceiling may be exceeded if Style is greater than 1."
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 636.0, 208.0546875, 221.0, 47.0 ],
                    "text": "Adjusts the amount of processing, similar to a ratio control on a typical compressor."
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 636.0, 373.0, 221.0, 87.0 ],
                    "text": "Adjusts the release for all envelopes. High values will result in something closer to normalization, low values will result in extreme upward compression, squeezing every last drop from your sounds."
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 293.0, 74.0, 221.0, 74.0 ],
                    "text": "If enabled, Squeeze will be bypassed when Transport stops. This avoids things like noise from hardware or reverb/delay tails coming up to full volume when nothing is playing."
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 203.0, 546.0, 150.0, 74.0 ],
                    "text": "This devices does incur an 8 sample delay used for the lookahead. Keep this in mind when using with parallel signal paths."
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 609.5, 68.0, 274.0, 60.0 ],
                    "text": "Parameters are set up exactly the same as the Max For Live device with the exception of Squeeze & Dry/Wet (Mix) being 0-1 instead of 0-100 "
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 123.0, 591.0, 74.0, 133.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 123.0, 748.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 123.0, 49.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 9,
                    "outlettype": [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
                    "patching_rect": [ 146.5, 94.0, 103.0, 22.0 ],
                    "text": "transport"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 123.0, 546.0, 74.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "fs.squeeze~"
                }
            },
            {
                "box": {
                    "attr": "transport_bypass",
                    "id": "obj-17",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 293.0, 50.0, 221.0, 22.0 ],
                    "text_width": 173.0
                }
            },
            {
                "box": {
                    "attr": "ceiling_dB",
                    "id": "obj-18",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 917.0, 350.0546875, 221.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "time_ms",
                    "id": "obj-19",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 636.0, 350.0, 221.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "floor_dB",
                    "id": "obj-20",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 355.0, 350.0, 221.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "dry_wet",
                    "id": "obj-23",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 917.0, 184.0546875, 221.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "squeeze",
                    "id": "obj-24",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 636.0, 184.0546875, 221.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "style_blend",
                    "id": "obj-25",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 355.0, 184.0546875, 221.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 123.0, 184.0546875, 209.0, 22.0 ],
                    "text": "abl.dsp.prism~ @decay 0.5 @mix 0.1"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "brushes.aif",
                                "filename": "brushes.aif",
                                "filekind": "audiofile",
                                "id": "u724003166",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-4",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 123.0, 128.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-7", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-7": [ "live.gain~", "live.gain~", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}